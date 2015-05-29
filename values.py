import os
import datetime
import pymssql
from configparser import ConfigParser


def connection():
    CURRENT_DIR = os.path.abspath(os.path.dirname(__file__))

    config = ConfigParser()
    config.read(os.path.join(CURRENT_DIR, 'config.ini'))

    server = config["Database"]["server"]
    user = config["Database"]["user"]
    password = config["Database"]["password"]
    conn = pymssql.connect(server, user, password, "ziiei")
    return conn


def retrieveValues(lang=1):
    conn = connection()
    cursor = conn.cursor()
    cursor.execute(
        'SELECT LabelType, LabelValue FROM dbo.Label where LanguageID=%d' % lang)
    labels = cursor.fetchall()
    cursor.execute(
        'SELECT MenuID, FormName, FormLink FROM dbo.Menu where LanguageID=%d ORDER BY MenuID' % lang)
    menu = cursor.fetchall()
    cursor.execute(
        'SELECT MenuID, FormName, FormLink FROM dbo.SubMenu where LanguageID=%d ORDER BY SubMenuID' % lang)
    submenu = cursor.fetchall()
    conn.close()
    menulist = []
    for menuitem in menu:
        menulist.append(0)
    for submenuitem in submenu:
        menulist[submenuitem[0]-1] = 1

    return {label[0]: label[1] for label in labels}, menu, submenu, menulist


def getRegisteration_Labels(lang=1):
    conn = connection()
    cursor = conn.cursor()
    cursor.execute(
        "SELECT * FROM dbo.Label where LanguageID = %d and LabelType = 'Registration_field' " % lang)
    labels = cursor.fetchall()
    cursor.execute(
        "SELECT * FROM dbo.Label where LanguageID = %d and LabelType = 'Gender' " % lang)
    sub_labels = cursor.fetchall()
    return labels, sub_labels


def contact_Labels(lang=1):
    conn = connection()
    cursor = conn.cursor()
    cursor.execute(
        "SELECT * FROM dbo.Label where LanguageID = %d and LabelType = 'Enquiry'")
    labels = cursor.fetchall()
    return labels
