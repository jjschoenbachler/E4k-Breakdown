.class final Lkotlin/script/experimental/api/ReplDataKt$makeSnippetIdentifier$2;
.super Lkotlin/jvm/internal/Lambda;
.source "replData.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/script/experimental/api/ReplDataKt;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlin/script/experimental/api/ScriptCompilationConfiguration;",
        "Lkotlin/script/experimental/api/ReplSnippetId;",
        "Ljava/lang/String;",
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
        "\u0000\u0012\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Lkotlin/script/experimental/api/ScriptCompilationConfiguration;",
        "snippetId",
        "Lkotlin/script/experimental/api/ReplSnippetId;"
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
.field public static final INSTANCE:Lkotlin/script/experimental/api/ReplDataKt$makeSnippetIdentifier$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/script/experimental/api/ReplDataKt$makeSnippetIdentifier$2;

    invoke-direct {v0}, Lkotlin/script/experimental/api/ReplDataKt$makeSnippetIdentifier$2;-><init>()V

    sput-object v0, Lkotlin/script/experimental/api/ReplDataKt$makeSnippetIdentifier$2;->INSTANCE:Lkotlin/script/experimental/api/ReplDataKt$makeSnippetIdentifier$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 58
    check-cast p1, Lkotlin/script/experimental/api/ScriptCompilationConfiguration;

    check-cast p2, Lkotlin/script/experimental/api/ReplSnippetId;

    invoke-virtual {p0, p1, p2}, Lkotlin/script/experimental/api/ReplDataKt$makeSnippetIdentifier$2;->invoke(Lkotlin/script/experimental/api/ScriptCompilationConfiguration;Lkotlin/script/experimental/api/ReplSnippetId;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/script/experimental/api/ScriptCompilationConfiguration;Lkotlin/script/experimental/api/ReplSnippetId;)Ljava/lang/String;
    .locals 1
    .param p1    # Lkotlin/script/experimental/api/ScriptCompilationConfiguration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/script/experimental/api/ReplSnippetId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$noName_0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "snippetId"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-static {p2}, Lkotlin/script/experimental/api/ReplDataKt;->makeDefaultSnippetIdentifier(Lkotlin/script/experimental/api/ReplSnippetId;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
