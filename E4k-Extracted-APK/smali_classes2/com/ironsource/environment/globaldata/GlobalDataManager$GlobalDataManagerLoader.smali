.class Lcom/ironsource/environment/globaldata/GlobalDataManager$GlobalDataManagerLoader;
.super Ljava/lang/Object;
.source "GlobalDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/environment/globaldata/GlobalDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GlobalDataManagerLoader"
.end annotation


# static fields
.field static volatile mInstance:Lcom/ironsource/environment/globaldata/GlobalDataManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lcom/ironsource/environment/globaldata/GlobalDataManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ironsource/environment/globaldata/GlobalDataManager;-><init>(Lcom/ironsource/environment/globaldata/GlobalDataManager$1;)V

    sput-object v0, Lcom/ironsource/environment/globaldata/GlobalDataManager$GlobalDataManagerLoader;->mInstance:Lcom/ironsource/environment/globaldata/GlobalDataManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
