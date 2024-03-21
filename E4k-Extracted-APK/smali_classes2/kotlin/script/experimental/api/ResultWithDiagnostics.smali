.class public abstract Lkotlin/script/experimental/api/ResultWithDiagnostics;
.super Ljava/lang/Object;
.source "errorHandling.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/script/experimental/api/ResultWithDiagnostics$Success;,
        Lkotlin/script/experimental/api/ResultWithDiagnostics$Failure;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00012\u00020\u0002:\u0002\t\nB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0003R\u0018\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008\u0082\u0001\u0002\u000b\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lkotlin/script/experimental/api/ResultWithDiagnostics;",
        "R",
        "",
        "()V",
        "reports",
        "",
        "Lkotlin/script/experimental/api/ScriptDiagnostic;",
        "getReports",
        "()Ljava/util/List;",
        "Failure",
        "Success",
        "Lkotlin/script/experimental/api/ResultWithDiagnostics$Success;",
        "Lkotlin/script/experimental/api/ResultWithDiagnostics$Failure;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lkotlin/script/experimental/api/ResultWithDiagnostics;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getReports()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/script/experimental/api/ScriptDiagnostic;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
