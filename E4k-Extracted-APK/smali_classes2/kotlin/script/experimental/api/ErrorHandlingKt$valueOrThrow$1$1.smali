.class final Lkotlin/script/experimental/api/ErrorHandlingKt$valueOrThrow$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "errorHandling.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/script/experimental/api/ErrorHandlingKt;->valueOrThrow(Lkotlin/script/experimental/api/ResultWithDiagnostics;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/script/experimental/api/ScriptDiagnostic;",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\r\n\u0002\u0008\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "R",
        "it",
        "Lkotlin/script/experimental/api/ScriptDiagnostic;"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lkotlin/script/experimental/api/ErrorHandlingKt$valueOrThrow$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/script/experimental/api/ErrorHandlingKt$valueOrThrow$1$1;

    invoke-direct {v0}, Lkotlin/script/experimental/api/ErrorHandlingKt$valueOrThrow$1$1;-><init>()V

    sput-object v0, Lkotlin/script/experimental/api/ErrorHandlingKt$valueOrThrow$1$1;->INSTANCE:Lkotlin/script/experimental/api/ErrorHandlingKt$valueOrThrow$1$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lkotlin/script/experimental/api/ScriptDiagnostic;)Ljava/lang/CharSequence;
    .locals 1
    .param p1    # Lkotlin/script/experimental/api/ScriptDiagnostic;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    invoke-virtual {p1}, Lkotlin/script/experimental/api/ScriptDiagnostic;->getException()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p1}, Lkotlin/script/experimental/api/ScriptDiagnostic;->getMessage()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    goto :goto_1

    :cond_1
    move-object p1, v0

    check-cast p1, Ljava/lang/CharSequence;

    :goto_1
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 291
    check-cast p1, Lkotlin/script/experimental/api/ScriptDiagnostic;

    invoke-virtual {p0, p1}, Lkotlin/script/experimental/api/ErrorHandlingKt$valueOrThrow$1$1;->invoke(Lkotlin/script/experimental/api/ScriptDiagnostic;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
