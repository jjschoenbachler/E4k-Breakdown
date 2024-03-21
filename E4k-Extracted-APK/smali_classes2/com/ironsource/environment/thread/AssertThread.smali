.class public final Lcom/ironsource/environment/thread/AssertThread;
.super Ljava/lang/Object;
.source "AssertThread.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/environment/thread/AssertThread$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/ironsource/environment/thread/AssertThread;",
        "",
        "()V",
        "Companion",
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
.field public static final Companion:Lcom/ironsource/environment/thread/AssertThread$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/ironsource/environment/thread/AssertThread$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ironsource/environment/thread/AssertThread$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ironsource/environment/thread/AssertThread;->Companion:Lcom/ironsource/environment/thread/AssertThread$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final assertMain()V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/ironsource/environment/thread/AssertThread;->Companion:Lcom/ironsource/environment/thread/AssertThread$Companion;

    invoke-virtual {v0}, Lcom/ironsource/environment/thread/AssertThread$Companion;->assertMain()V

    return-void
.end method
