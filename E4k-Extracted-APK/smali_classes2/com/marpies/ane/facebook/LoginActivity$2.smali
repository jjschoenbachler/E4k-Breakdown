.class synthetic Lcom/marpies/ane/facebook/LoginActivity$2;
.super Ljava/lang/Object;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/marpies/ane/facebook/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$marpies$ane$facebook$data$AIRFacebookPermissionType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 71
    invoke-static {}, Lcom/marpies/ane/facebook/data/AIRFacebookPermissionType;->values()[Lcom/marpies/ane/facebook/data/AIRFacebookPermissionType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/marpies/ane/facebook/LoginActivity$2;->$SwitchMap$com$marpies$ane$facebook$data$AIRFacebookPermissionType:[I

    :try_start_0
    sget-object v0, Lcom/marpies/ane/facebook/LoginActivity$2;->$SwitchMap$com$marpies$ane$facebook$data$AIRFacebookPermissionType:[I

    sget-object v1, Lcom/marpies/ane/facebook/data/AIRFacebookPermissionType;->READ:Lcom/marpies/ane/facebook/data/AIRFacebookPermissionType;

    invoke-virtual {v1}, Lcom/marpies/ane/facebook/data/AIRFacebookPermissionType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/marpies/ane/facebook/LoginActivity$2;->$SwitchMap$com$marpies$ane$facebook$data$AIRFacebookPermissionType:[I

    sget-object v1, Lcom/marpies/ane/facebook/data/AIRFacebookPermissionType;->PUBLISH:Lcom/marpies/ane/facebook/data/AIRFacebookPermissionType;

    invoke-virtual {v1}, Lcom/marpies/ane/facebook/data/AIRFacebookPermissionType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
