.class final Lkotlin/script/experimental/util/LinkedSnippetKt$toList$1;
.super Lkotlin/jvm/internal/Lambda;
.source "linkedSnippet.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/script/experimental/util/LinkedSnippetKt;->toList(Lkotlin/script/experimental/util/LinkedSnippet;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "TT;TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0004\n\u0002\u0008\u0003\u0010\u0000\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u00012\u0006\u0010\u0002\u001a\u0002H\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        "T",
        "it"
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
.field public static final INSTANCE:Lkotlin/script/experimental/util/LinkedSnippetKt$toList$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/script/experimental/util/LinkedSnippetKt$toList$1;

    invoke-direct {v0}, Lkotlin/script/experimental/util/LinkedSnippetKt$toList$1;-><init>()V

    sput-object v0, Lkotlin/script/experimental/util/LinkedSnippetKt$toList$1;->INSTANCE:Lkotlin/script/experimental/util/LinkedSnippetKt$toList$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    return-object p1
.end method
