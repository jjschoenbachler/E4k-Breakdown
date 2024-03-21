.class public final Lcom/ironsource/environment/g;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u000b\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001a\u0010\u000c\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u0006\"\u0004\u0008\u000e\u0010\u0008\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/ironsource/environment/DeviceConfigurationsDataHolder;",
        "",
        "()V",
        "shouldReuseAdvertisingId",
        "",
        "getShouldReuseAdvertisingId",
        "()Z",
        "setShouldReuseAdvertisingId",
        "(Z)V",
        "shouldUseAdvertisingId",
        "getShouldUseAdvertisingId",
        "setShouldUseAdvertisingId",
        "shouldUseAppSet",
        "getShouldUseAppSet",
        "setShouldUseAppSet",
        "environment_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final a:Lcom/ironsource/environment/g;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static b:Z

.field private static c:Z

.field private static d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ironsource/environment/g;

    invoke-direct {v0}, Lcom/ironsource/environment/g;-><init>()V

    sput-object v0, Lcom/ironsource/environment/g;->a:Lcom/ironsource/environment/g;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/ironsource/environment/g;->b:Z

    sput-boolean v0, Lcom/ironsource/environment/g;->c:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Z)V
    .locals 0

    sput-boolean p0, Lcom/ironsource/environment/g;->b:Z

    return-void
.end method

.method public static a()Z
    .locals 1

    sget-boolean v0, Lcom/ironsource/environment/g;->b:Z

    return v0
.end method

.method public static b(Z)V
    .locals 0

    sput-boolean p0, Lcom/ironsource/environment/g;->c:Z

    return-void
.end method

.method public static b()Z
    .locals 1

    sget-boolean v0, Lcom/ironsource/environment/g;->c:Z

    return v0
.end method

.method public static c(Z)V
    .locals 0

    sput-boolean p0, Lcom/ironsource/environment/g;->d:Z

    return-void
.end method

.method public static c()Z
    .locals 1

    sget-boolean v0, Lcom/ironsource/environment/g;->d:Z

    return v0
.end method
