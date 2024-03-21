.class public final Lkotlin/script/experimental/api/ResultValue$NotEvaluated;
.super Lkotlin/script/experimental/api/ResultValue;
.source "scriptEvaluation.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/script/experimental/api/ResultValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NotEvaluated"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lkotlin/script/experimental/api/ResultValue$NotEvaluated;",
        "Lkotlin/script/experimental/api/ResultValue;",
        "()V",
        "kotlin-scripting-common"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lkotlin/script/experimental/api/ResultValue$NotEvaluated;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/script/experimental/api/ResultValue$NotEvaluated;

    invoke-direct {v0}, Lkotlin/script/experimental/api/ResultValue$NotEvaluated;-><init>()V

    sput-object v0, Lkotlin/script/experimental/api/ResultValue$NotEvaluated;->INSTANCE:Lkotlin/script/experimental/api/ResultValue$NotEvaluated;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 175
    invoke-direct {p0, v0, v0, v1, v0}, Lkotlin/script/experimental/api/ResultValue;-><init>(Lkotlin/reflect/KClass;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
