.class public final Lkotlin/script/experimental/util/LinkedSnippetImpl;
.super Ljava/lang/Object;
.source "linkedSnippet.kt"

# interfaces
.implements Lkotlin/script/experimental/util/LinkedSnippet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlin/script/experimental/util/LinkedSnippet<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\u001d\u0012\u0006\u0010\u0003\u001a\u00028\u0000\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0000\u00a2\u0006\u0002\u0010\u0005J\r\u0010\t\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\nR\u0010\u0010\u0003\u001a\u00028\u0000X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u001c\u0010\u0004\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0000X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "Lkotlin/script/experimental/util/LinkedSnippetImpl;",
        "T",
        "Lkotlin/script/experimental/util/LinkedSnippet;",
        "_val",
        "previous",
        "(Ljava/lang/Object;Lkotlin/script/experimental/util/LinkedSnippetImpl;)V",
        "Ljava/lang/Object;",
        "getPrevious",
        "()Lkotlin/script/experimental/util/LinkedSnippetImpl;",
        "get",
        "()Ljava/lang/Object;",
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


# instance fields
.field private final _val:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final previous:Lkotlin/script/experimental/util/LinkedSnippetImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/script/experimental/util/LinkedSnippetImpl<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lkotlin/script/experimental/util/LinkedSnippetImpl;)V
    .locals 0
    .param p2    # Lkotlin/script/experimental/util/LinkedSnippetImpl;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lkotlin/script/experimental/util/LinkedSnippetImpl<",
            "TT;>;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/script/experimental/util/LinkedSnippetImpl;->_val:Ljava/lang/Object;

    iput-object p2, p0, Lkotlin/script/experimental/util/LinkedSnippetImpl;->previous:Lkotlin/script/experimental/util/LinkedSnippetImpl;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lkotlin/script/experimental/util/LinkedSnippetImpl;->_val:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic getPrevious()Lkotlin/script/experimental/util/LinkedSnippet;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lkotlin/script/experimental/util/LinkedSnippetImpl;->getPrevious()Lkotlin/script/experimental/util/LinkedSnippetImpl;

    move-result-object v0

    check-cast v0, Lkotlin/script/experimental/util/LinkedSnippet;

    return-object v0
.end method

.method public getPrevious()Lkotlin/script/experimental/util/LinkedSnippetImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/script/experimental/util/LinkedSnippetImpl<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 30
    iget-object v0, p0, Lkotlin/script/experimental/util/LinkedSnippetImpl;->previous:Lkotlin/script/experimental/util/LinkedSnippetImpl;

    return-object v0
.end method
