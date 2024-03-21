.class public final Lcom/adobe/air/AIRSharedPref;
.super Ljava/lang/Object;
.source "AIRSharedPref.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AIRSharedPref"

.field private static SP_CONFIG_DATA:Ljava/lang/String; = "AIRSharedPref.ConfigData"

.field private static SP_CONFIG_DATA_DEFAULT:Ljava/lang/String; = "\n"

.field private static SP_CONFIG_REQUEST_TIME:Ljava/lang/String; = "AIRSharedPref.ConfigRequestTime"

.field private static SP_CONFIG_REQUEST_TIME_DEFAULT:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConfigData(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 105
    sget-object v0, Lcom/adobe/air/AIRSharedPref;->SP_CONFIG_DATA_DEFAULT:Ljava/lang/String;

    .line 110
    :try_start_0
    invoke-static {}, Lcom/adobe/air/utils/Utils;->getRuntimePackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    .line 109
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p0

    .line 114
    invoke-static {}, Lcom/adobe/air/AIRSharedPref;->getPreferencesKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 113
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 118
    sget-object v1, Lcom/adobe/air/AIRSharedPref;->SP_CONFIG_DATA:Ljava/lang/String;

    sget-object v2, Lcom/adobe/air/AIRSharedPref;->SP_CONFIG_DATA_DEFAULT:Ljava/lang/String;

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p0, v0

    .line 125
    :goto_0
    sget-object v0, Lcom/adobe/air/AIRSharedPref;->SP_CONFIG_DATA_DEFAULT:Ljava/lang/String;

    return-object p0
.end method

.method public static getConfigRequestTime(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 62
    sget-object v0, Lcom/adobe/air/AIRSharedPref;->SP_CONFIG_REQUEST_TIME_DEFAULT:Ljava/lang/String;

    .line 67
    :try_start_0
    invoke-static {}, Lcom/adobe/air/utils/Utils;->getRuntimePackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    .line 66
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p0

    .line 71
    invoke-static {}, Lcom/adobe/air/AIRSharedPref;->getPreferencesKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 70
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 75
    sget-object v1, Lcom/adobe/air/AIRSharedPref;->SP_CONFIG_REQUEST_TIME:Ljava/lang/String;

    sget-object v2, Lcom/adobe/air/AIRSharedPref;->SP_CONFIG_REQUEST_TIME_DEFAULT:Ljava/lang/String;

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p0, v0

    .line 82
    :goto_0
    sget-object v0, Lcom/adobe/air/AIRSharedPref;->SP_CONFIG_REQUEST_TIME_DEFAULT:Ljava/lang/String;

    return-object p0
.end method

.method private static getPreferencesKey()Ljava/lang/String;
    .locals 2

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/adobe/air/utils/Utils;->getRuntimePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".AIRSharedPref"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setConfigData(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 172
    invoke-static {}, Lcom/adobe/air/AIRSharedPref;->getPreferencesKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 171
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 175
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 176
    sget-object v0, Lcom/adobe/air/AIRSharedPref;->SP_CONFIG_DATA:Ljava/lang/String;

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 178
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p0

    return p0
.end method

.method public static setConfigRequestTime(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 149
    invoke-static {}, Lcom/adobe/air/AIRSharedPref;->getPreferencesKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 148
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 152
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 153
    sget-object v0, Lcom/adobe/air/AIRSharedPref;->SP_CONFIG_REQUEST_TIME:Ljava/lang/String;

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 155
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p0

    return p0
.end method
