.class public Lcom/marpies/ane/facebook/utils/AIR;
.super Ljava/lang/Object;
.source "AIR.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AIRFacebook"

.field private static mContext:Lcom/marpies/ane/facebook/AIRFacebookExtensionContext;

.field private static mLogEnabled:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/marpies/ane/facebook/utils/AIR;->mLogEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">> dispatchEvent in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/marpies/ane/facebook/utils/AIR;->mContext:Lcom/marpies/ane/facebook/AIRFacebookExtensionContext;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " eventName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/marpies/ane/facebook/utils/AIR;->log(Ljava/lang/String;)V

    .line 40
    sget-object v0, Lcom/marpies/ane/facebook/utils/AIR;->mContext:Lcom/marpies/ane/facebook/AIRFacebookExtensionContext;

    invoke-virtual {v0, p0, p1}, Lcom/marpies/ane/facebook/AIRFacebookExtensionContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getContext()Lcom/marpies/ane/facebook/AIRFacebookExtensionContext;
    .locals 1

    .line 63
    sget-object v0, Lcom/marpies/ane/facebook/utils/AIR;->mContext:Lcom/marpies/ane/facebook/AIRFacebookExtensionContext;

    return-object v0
.end method

.method public static getLogEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 70
    sget-object v0, Lcom/marpies/ane/facebook/utils/AIR;->mLogEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1

    .line 33
    sget-object v0, Lcom/marpies/ane/facebook/utils/AIR;->mLogEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AIRFacebook"

    .line 34
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static setContext(Lcom/marpies/ane/facebook/AIRFacebookExtensionContext;)V
    .locals 0

    .line 66
    sput-object p0, Lcom/marpies/ane/facebook/utils/AIR;->mContext:Lcom/marpies/ane/facebook/AIRFacebookExtensionContext;

    return-void
.end method

.method public static setLogEnabled(Ljava/lang/Boolean;)V
    .locals 0

    .line 73
    sput-object p0, Lcom/marpies/ane/facebook/utils/AIR;->mLogEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method public static startActivity(Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 44
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/marpies/ane/facebook/utils/AIR;->mContext:Lcom/marpies/ane/facebook/AIRFacebookExtensionContext;

    invoke-virtual {v1}, Lcom/marpies/ane/facebook/AIRFacebookExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 45
    sget-object v1, Lcom/marpies/ane/facebook/utils/AIR;->mContext:Lcom/marpies/ane/facebook/AIRFacebookExtensionContext;

    invoke-virtual {v1}, Lcom/marpies/ane/facebook/AIRFacebookExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-nez v1, :cond_0

    .line 47
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Activity "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " could not be started. Make sure you specified the activity in the android manifest."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/marpies/ane/facebook/utils/AIR;->log(Ljava/lang/String;)V

    return-void

    .line 50
    :cond_0
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 51
    sget-object p0, Lcom/marpies/ane/facebook/utils/AIR;->mContext:Lcom/marpies/ane/facebook/AIRFacebookExtensionContext;

    invoke-virtual {p0}, Lcom/marpies/ane/facebook/AIRFacebookExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
