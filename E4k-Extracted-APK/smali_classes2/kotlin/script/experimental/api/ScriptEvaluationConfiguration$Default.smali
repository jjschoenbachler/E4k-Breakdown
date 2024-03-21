.class public final Lkotlin/script/experimental/api/ScriptEvaluationConfiguration$Default;
.super Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;
.source "scriptEvaluation.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Default"
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
        "Lkotlin/script/experimental/api/ScriptEvaluationConfiguration$Default;",
        "Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;",
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
.field public static final INSTANCE:Lkotlin/script/experimental/api/ScriptEvaluationConfiguration$Default;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/script/experimental/api/ScriptEvaluationConfiguration$Default;

    invoke-direct {v0}, Lkotlin/script/experimental/api/ScriptEvaluationConfiguration$Default;-><init>()V

    sput-object v0, Lkotlin/script/experimental/api/ScriptEvaluationConfiguration$Default;->INSTANCE:Lkotlin/script/experimental/api/ScriptEvaluationConfiguration$Default;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 36
    invoke-direct {p0, v0, v1, v0}, Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;-><init>(Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
