.class public final enum Lcom/marpies/ane/facebook/data/AIRFacebookShareType;
.super Ljava/lang/Enum;
.source "AIRFacebookShareType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/marpies/ane/facebook/data/AIRFacebookShareType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/marpies/ane/facebook/data/AIRFacebookShareType;

.field public static final enum APP_INVITE:Lcom/marpies/ane/facebook/data/AIRFacebookShareType;

.field public static final enum GAME_REQUEST:Lcom/marpies/ane/facebook/data/AIRFacebookShareType;

.field public static final enum LINK:Lcom/marpies/ane/facebook/data/AIRFacebookShareType;

.field public static final enum MESSAGE_LINK:Lcom/marpies/ane/facebook/data/AIRFacebookShareType;

.field public static final enum MESSAGE_PHOTO:Lcom/marpies/ane/facebook/data/AIRFacebookShareType;

.field public static final enum NONE:Lcom/marpies/ane/facebook/data/AIRFacebookShareType;

.field public static final enum OPEN_GRAPH_STORY:Lcom/marpies/ane/facebook/data/AIRFacebookShareType;

.field public static final enum PHOTO:Lcom/marpies/ane/facebook/data/AIRFacebookShareType;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 21
    new-instance v0, Lcom/marpies/ane/facebook/data/AIRFacebookShareType;

    const-string v1, "LINK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/marpies/ane/facebook/data/AIRFacebookShareType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/marpies/ane/facebook/data/AIRFacebookShareType;->LINK:Lcom/marpies/ane/facebook/data/AIRFacebookShareType;

    new-instance v0, Lcom/marpies/ane/facebook/data/AIRFacebookShareType;

    const-string v1, "PHOTO"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/marpies/ane/facebook/data/AIRFacebookShareType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/marpies/ane/facebook/data/AIRFacebookShareType;->PHOTO:Lcom/marpies/ane/facebook/data/AIRFacebookShareType;

    new-instance v0, Lcom/marpies/ane/facebook/data/AIRFacebookShareType;

    const-string v1, "MESSAGE_LINK"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/marpies/ane/facebook/data/AIRFacebookShareType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/marpies/ane/facebook/data/AIRFacebookShareType;->MESSAGE_LINK:Lcom/marpies/ane/facebook/data/AIRFacebookShareType;

    new-instance v0, Lcom/marpies/ane/facebook/data/AIRFacebookShareType;

    const-string v1, "MESSAGE_PHOTO"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/marpies/ane/facebook/data/AIRFacebookShareType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/marpies/ane/facebook/data/AIRFacebookShareType;->MESSAGE_PHOTO:Lcom/marpies/ane/facebook/data/AIRFacebookShareType;

    new-instance v0, Lcom/marpies/ane/facebook/data/AIRFacebookShareType;

    const-string v1, "OPEN_GRAPH_STORY"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/marpies/ane/facebook/data/AIRFacebookShareType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/marpies/ane/facebook/data/AIRFacebookShareType;->OPEN_GRAPH_STORY:Lcom/marpies/ane/facebook/data/AIRFacebookShareType;

    new-instance v0, Lcom/marpies/ane/facebook/data/AIRFacebookShareType;

    const-string v1, "APP_INVITE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/marpies/ane/facebook/data/AIRFacebookShareType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/marpies/ane/facebook/data/AIRFacebookShareType;->APP_INVITE:Lcom/marpies/ane/facebook/data/AIRFacebookShareType;

    new-instance v0, Lcom/marpies/ane/facebook/data/AIRFacebookShareType;

    const-string v1, "GAME_REQUEST"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/marpies/ane/facebook/data/AIRFacebookShareType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/marpies/ane/facebook/data/AIRFacebookShareType;->GAME_REQUEST:Lcom/marpies/ane/facebook/data/AIRFacebookShareType;

    new-instance v0, Lcom/marpies/ane/facebook/data/AIRFacebookShareType;

    const-string v1, "NONE"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/marpies/ane/facebook/data/AIRFacebookShareType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/marpies/ane/facebook/data/AIRFacebookShareType;->NONE:Lcom/marpies/ane/facebook/data/AIRFacebookShareType;

    const/16 v0, 0x8

    .line 19
    new-array v0, v0, [Lcom/marpies/ane/facebook/data/AIRFacebookShareType;

    sget-object v1, Lcom/marpies/ane/facebook/data/AIRFacebookShareType;->LINK:Lcom/marpies/ane/facebook/data/AIRFacebookShareType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/marpies/ane/facebook/data/AIRFacebookShareType;->PHOTO:Lcom/marpies/ane/facebook/data/AIRFacebookShareType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/marpies/ane/facebook/data/AIRFacebookShareType;->MESSAGE_LINK:Lcom/marpies/ane/facebook/data/AIRFacebookShareType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/marpies/ane/facebook/data/AIRFacebookShareType;->MESSAGE_PHOTO:Lcom/marpies/ane/facebook/data/AIRFacebookShareType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/marpies/ane/facebook/data/AIRFacebookShareType;->OPEN_GRAPH_STORY:Lcom/marpies/ane/facebook/data/AIRFacebookShareType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/marpies/ane/facebook/data/AIRFacebookShareType;->APP_INVITE:Lcom/marpies/ane/facebook/data/AIRFacebookShareType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/marpies/ane/facebook/data/AIRFacebookShareType;->GAME_REQUEST:Lcom/marpies/ane/facebook/data/AIRFacebookShareType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/marpies/ane/facebook/data/AIRFacebookShareType;->NONE:Lcom/marpies/ane/facebook/data/AIRFacebookShareType;

    aput-object v1, v0, v9

    sput-object v0, Lcom/marpies/ane/facebook/data/AIRFacebookShareType;->$VALUES:[Lcom/marpies/ane/facebook/data/AIRFacebookShareType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/marpies/ane/facebook/data/AIRFacebookShareType;
    .locals 1

    .line 19
    const-class v0, Lcom/marpies/ane/facebook/data/AIRFacebookShareType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/marpies/ane/facebook/data/AIRFacebookShareType;

    return-object p0
.end method

.method public static values()[Lcom/marpies/ane/facebook/data/AIRFacebookShareType;
    .locals 1

    .line 19
    sget-object v0, Lcom/marpies/ane/facebook/data/AIRFacebookShareType;->$VALUES:[Lcom/marpies/ane/facebook/data/AIRFacebookShareType;

    invoke-virtual {v0}, [Lcom/marpies/ane/facebook/data/AIRFacebookShareType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/marpies/ane/facebook/data/AIRFacebookShareType;

    return-object v0
.end method
