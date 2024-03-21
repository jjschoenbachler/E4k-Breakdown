.class final Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyCopyDelegate$1;
.super Lkotlin/jvm/internal/Lambda;
.source "propertiesCollection.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyCopyDelegate;-><init>(Lkotlin/script/experimental/util/PropertiesCollection$Key;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0001\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001\"\u0004\u0008\u0000\u0010\u0002*\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "Lkotlin/script/experimental/util/PropertiesCollection;"
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
.field public static final INSTANCE:Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyCopyDelegate$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyCopyDelegate$1;

    invoke-direct {v0}, Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyCopyDelegate$1;-><init>()V

    sput-object v0, Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyCopyDelegate$1;->INSTANCE:Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyCopyDelegate$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 61
    check-cast p1, Lkotlin/script/experimental/util/PropertiesCollection;

    invoke-virtual {p0, p1}, Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyCopyDelegate$1;->invoke(Lkotlin/script/experimental/util/PropertiesCollection;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/script/experimental/util/PropertiesCollection;)Ljava/lang/Void;
    .locals 1
    .param p1    # Lkotlin/script/experimental/util/PropertiesCollection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
