.class public Lcom/harman/services/AIRRuntimeCheck;
.super Ljava/lang/Object;
.source "AIRRuntimeCheck.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AIRRuntimeCheck"

.field private static _bShowingSplash:Ljava/lang/Boolean; = null

.field private static m_entryPoints:Lcom/adobe/air/Entrypoints; = null

.field private static m_hasDoneSplash:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 98
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/harman/services/AIRRuntimeCheck;->_bShowingSplash:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doSplashScreen(Lcom/adobe/air/Entrypoints;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 171
    sget-boolean p1, Lcom/harman/services/AIRRuntimeCheck;->m_hasDoneSplash:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x1

    .line 172
    sput-boolean p1, Lcom/harman/services/AIRRuntimeCheck;->m_hasDoneSplash:Z

    .line 175
    sput-object p0, Lcom/harman/services/AIRRuntimeCheck;->m_entryPoints:Lcom/adobe/air/Entrypoints;

    .line 176
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v1

    .line 177
    invoke-virtual {v1}, Lcom/adobe/air/AndroidActivityWrapper;->getDefaultContext()Landroid/content/Context;

    move-result-object v1

    .line 182
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "META-INF/AIR/license.txt"

    .line 183
    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 184
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 185
    invoke-virtual {v3, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 186
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    const-string v2, "META-INF/AIR/application.xml"

    .line 189
    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 190
    new-instance v2, Ljava/util/Scanner;

    invoke-direct {v2, v1}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    const-string v4, "<id>.*</id>"

    .line 191
    invoke-virtual {v2, v4, v0}, Ljava/util/Scanner;->findWithinHorizon(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 192
    invoke-virtual {v2}, Ljava/util/Scanner;->close()V

    .line 193
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    const/4 v1, 0x4

    if-eqz v4, :cond_1

    .line 194
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x5

    invoke-virtual {v4, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :cond_1
    const-string v2, "DevID"

    .line 196
    invoke-virtual {v3, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "License"

    .line 197
    invoke-virtual {v3, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    if-eqz v4, :cond_2

    .line 205
    invoke-virtual {p0, v2, v4, v3}, Lcom/adobe/air/Entrypoints;->checkSplashScreen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    goto :goto_0

    :cond_2
    const/4 v4, 0x1

    :goto_0
    if-eqz v4, :cond_3

    .line 210
    invoke-virtual {p0, v2, p2, v3}, Lcom/adobe/air/Entrypoints;->checkSplashScreen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    :cond_3
    if-eqz v4, :cond_4

    const-string v5, "air."

    .line 213
    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 215
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v2, p2, v3}, Lcom/adobe/air/Entrypoints;->checkSplashScreen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_4
    move p0, v4

    goto :goto_1

    :catch_0
    :cond_5
    const/4 p0, 0x1

    :goto_1
    if-eqz p0, :cond_6

    .line 229
    :try_start_1
    invoke-static {}, Lcom/harman/services/AIRRuntimeCheck;->showSplash()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    const/4 p0, 0x0

    :cond_6
    :goto_2
    return p0
.end method

.method public static md5Sum(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    :try_start_0
    const-string v1, "MD5"

    .line 84
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    const-string v2, "UTF-8"

    .line 85
    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 86
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 87
    invoke-static {p0}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object p0

    .line 88
    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static removeSplash()V
    .locals 2

    .line 158
    sget-object v0, Lcom/harman/services/AIRRuntimeCheck;->_bShowingSplash:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "AIRRuntimeCheck"

    const-string v1, "AIR - removing splash screen"

    .line 160
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 161
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/harman/services/AIRRuntimeCheck;->_bShowingSplash:Ljava/lang/Boolean;

    .line 162
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->getViewSplashScreenImageView()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 164
    :cond_0
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_1
    return-void
.end method

.method public static showBetaPopup()V
    .locals 1

    const-string v0, "BETA RELEASE: not for distribution"

    .line 70
    invoke-static {v0}, Lcom/harman/services/AIRRuntimeCheck;->showPopup(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static showExpiredPopup()V
    .locals 1

    const-string v0, "BETA RELEASE HAS EXPIRED. Please update to a standard release"

    .line 76
    invoke-static {v0}, Lcom/harman/services/AIRRuntimeCheck;->showPopup(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static showPopup(Ljava/lang/CharSequence;)V
    .locals 2

    .line 61
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->getDefaultContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    .line 63
    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    const/4 v0, 0x0

    const/16 v1, 0x10

    .line 64
    invoke-virtual {p0, v1, v0, v0}, Landroid/widget/Toast;->setGravity(III)V

    .line 65
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static showSplash()V
    .locals 14

    const-string v0, "AIRRuntimeCheck"

    const-string v1, "AIR - showing Splash Screen"

    .line 102
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :try_start_0
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/adobe/air/AIRWindowSurfaceView;

    .line 107
    invoke-virtual {v1}, Lcom/adobe/air/AIRWindowSurfaceView;->getVisibleBoundWidth()I

    move-result v2

    .line 108
    invoke-virtual {v1}, Lcom/adobe/air/AIRWindowSurfaceView;->getVisibleBoundHeight()I

    move-result v1

    .line 109
    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->getApplication()Landroid/app/Application;

    move-result-object v3

    if-ge v2, v1, :cond_0

    const-string v4, "splash_portrait"

    goto :goto_0

    :cond_0
    const-string v4, "splash_landscape"

    .line 112
    :goto_0
    invoke-virtual {v3}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v3}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "drawable"

    .line 113
    invoke-virtual {v3}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v4, v7, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 112
    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 114
    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 115
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 116
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/lit8 v5, v7, 0x1e

    const/16 v6, 0x64

    .line 119
    div-int/lit8 v8, v5, 0x64

    mul-int/lit8 v5, v7, 0x32

    .line 120
    div-int/2addr v5, v6

    sub-int v12, v5, v8

    if-ge v2, v1, :cond_1

    const/16 v1, 0x19

    goto :goto_1

    :cond_1
    const/16 v1, 0x28

    :goto_1
    mul-int v4, v4, v1

    .line 121
    div-int/lit8 v9, v4, 0x64

    const/16 v1, 0x99

    const/4 v2, 0x0

    .line 122
    invoke-static {v2, v6, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    .line 124
    new-array v13, v12, [I

    const/4 v6, 0x0

    const/4 v11, 0x1

    move-object v4, v3

    move-object v5, v13

    move v10, v12

    .line 126
    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v4, 0x0

    :goto_2
    const/4 v5, 0x1

    if-ge v4, v12, :cond_3

    .line 128
    aget v6, v13, v4

    if-ne v6, v1, :cond_2

    const/4 v1, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_4

    .line 136
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/harman/services/AIRRuntimeCheck;->_bShowingSplash:Ljava/lang/Boolean;

    .line 138
    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->getViewSplashScreenImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 139
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 140
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 142
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_4

    :cond_4
    const-string v1, "AIR SDK"

    const-string v3, "Invalid splash screen image used - please check your SDK"

    .line 145
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "WARNING: Unlicensed version of AIR SDK"

    .line 146
    invoke-static {v1}, Lcom/harman/services/AIRRuntimeCheck;->showPopup(Ljava/lang/CharSequence;)V

    .line 147
    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->finish()V

    .line 148
    sput-boolean v2, Lcom/harman/services/AIRRuntimeCheck;->m_hasDoneSplash:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    const-string v1, "AIRRuntimeCheck"

    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showSplash ERROR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-void
.end method
