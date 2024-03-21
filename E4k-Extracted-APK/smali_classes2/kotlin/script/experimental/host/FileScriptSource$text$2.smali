.class final Lkotlin/script/experimental/host/FileScriptSource$text$2;
.super Lkotlin/jvm/internal/Lambda;
.source "scriptHostUtil.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/script/experimental/host/FileScriptSource;-><init>(Ljava/io/File;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
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
        "\u0000\u0006\n\u0000\n\u0002\u0010\u000e\u0010\u0000\u001a\u00020\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        ""
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lkotlin/script/experimental/host/FileScriptSource;


# direct methods
.method constructor <init>(Lkotlin/script/experimental/host/FileScriptSource;)V
    .locals 0

    iput-object p1, p0, Lkotlin/script/experimental/host/FileScriptSource$text$2;->this$0:Lkotlin/script/experimental/host/FileScriptSource;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 52
    invoke-virtual {p0}, Lkotlin/script/experimental/host/FileScriptSource$text$2;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 52
    iget-object v0, p0, Lkotlin/script/experimental/host/FileScriptSource$text$2;->this$0:Lkotlin/script/experimental/host/FileScriptSource;

    invoke-static {v0}, Lkotlin/script/experimental/host/FileScriptSource;->access$getPreloadedText$p(Lkotlin/script/experimental/host/FileScriptSource;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lkotlin/script/experimental/host/FileScriptSource$text$2;->this$0:Lkotlin/script/experimental/host/FileScriptSource;

    invoke-virtual {v0}, Lkotlin/script/experimental/host/FileScriptSource;->getFile()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lkotlin/io/FilesKt;->readText$default(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
