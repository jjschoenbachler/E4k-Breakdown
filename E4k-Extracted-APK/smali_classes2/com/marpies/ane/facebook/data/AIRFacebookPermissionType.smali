.class public final enum Lcom/marpies/ane/facebook/data/AIRFacebookPermissionType;
.super Ljava/lang/Enum;
.source "AIRFacebookPermissionType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/marpies/ane/facebook/data/AIRFacebookPermissionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/marpies/ane/facebook/data/AIRFacebookPermissionType;

.field public static final enum PUBLISH:Lcom/marpies/ane/facebook/data/AIRFacebookPermissionType;

.field public static final enum READ:Lcom/marpies/ane/facebook/data/AIRFacebookPermissionType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 21
    new-instance v0, Lcom/marpies/ane/facebook/data/AIRFacebookPermissionType;

    const-string v1, "READ"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/marpies/ane/facebook/data/AIRFacebookPermissionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/marpies/ane/facebook/data/AIRFacebookPermissionType;->READ:Lcom/marpies/ane/facebook/data/AIRFacebookPermissionType;

    new-instance v0, Lcom/marpies/ane/facebook/data/AIRFacebookPermissionType;

    const-string v1, "PUBLISH"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/marpies/ane/facebook/data/AIRFacebookPermissionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/marpies/ane/facebook/data/AIRFacebookPermissionType;->PUBLISH:Lcom/marpies/ane/facebook/data/AIRFacebookPermissionType;

    const/4 v0, 0x2

    .line 19
    new-array v0, v0, [Lcom/marpies/ane/facebook/data/AIRFacebookPermissionType;

    sget-object v1, Lcom/marpies/ane/facebook/data/AIRFacebookPermissionType;->READ:Lcom/marpies/ane/facebook/data/AIRFacebookPermissionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/marpies/ane/facebook/data/AIRFacebookPermissionType;->PUBLISH:Lcom/marpies/ane/facebook/data/AIRFacebookPermissionType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/marpies/ane/facebook/data/AIRFacebookPermissionType;->$VALUES:[Lcom/marpies/ane/facebook/data/AIRFacebookPermissionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/marpies/ane/facebook/data/AIRFacebookPermissionType;
    .locals 1

    .line 19
    const-class v0, Lcom/marpies/ane/facebook/data/AIRFacebookPermissionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/marpies/ane/facebook/data/AIRFacebookPermissionType;

    return-object p0
.end method

.method public static values()[Lcom/marpies/ane/facebook/data/AIRFacebookPermissionType;
    .locals 1

    .line 19
    sget-object v0, Lcom/marpies/ane/facebook/data/AIRFacebookPermissionType;->$VALUES:[Lcom/marpies/ane/facebook/data/AIRFacebookPermissionType;

    invoke-virtual {v0}, [Lcom/marpies/ane/facebook/data/AIRFacebookPermissionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/marpies/ane/facebook/data/AIRFacebookPermissionType;

    return-object v0
.end method
