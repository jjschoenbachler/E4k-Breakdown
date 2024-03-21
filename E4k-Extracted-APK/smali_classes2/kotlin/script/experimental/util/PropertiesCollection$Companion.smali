.class public final Lkotlin/script/experimental/util/PropertiesCollection$Companion;
.super Ljava/lang/Object;
.source "propertiesCollection.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/script/experimental/util/PropertiesCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J-\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u0002H\u00080\u0007\"\u0004\u0008\u0000\u0010\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u0001H\u00082\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ7\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u0002H\u00080\u0007\"\u0004\u0008\u0000\u0010\u00082\u0019\u0010\r\u001a\u0015\u0012\u0004\u0012\u00020\u000f\u0012\u0006\u0012\u0004\u0018\u0001H\u00080\u000e\u00a2\u0006\u0002\u0008\u00102\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bJ=\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u0002H\u00080\u0012\"\u0004\u0008\u0000\u0010\u00082\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u0002H\u00080\u00142\u001b\u0008\u0002\u0010\u0015\u001a\u0015\u0012\u0004\u0012\u00020\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u000e\u00a2\u0006\u0002\u0008\u0010R\u0016\u0010\u0003\u001a\u00020\u00048\u0002X\u0083D\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0005\u0010\u0002\u00a8\u0006\u0016"
    }
    d2 = {
        "Lkotlin/script/experimental/util/PropertiesCollection$Companion;",
        "",
        "()V",
        "serialVersionUID",
        "",
        "getSerialVersionUID$annotations",
        "key",
        "Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyDelegate;",
        "T",
        "defaultValue",
        "isTransient",
        "",
        "(Ljava/lang/Object;Z)Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyDelegate;",
        "getDefaultValue",
        "Lkotlin/Function1;",
        "Lkotlin/script/experimental/util/PropertiesCollection;",
        "Lkotlin/ExtensionFunctionType;",
        "keyCopy",
        "Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyCopyDelegate;",
        "source",
        "Lkotlin/script/experimental/util/PropertiesCollection$Key;",
        "getSourceProperties",
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

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lkotlin/script/experimental/util/PropertiesCollection$Companion;-><init>()V

    return-void
.end method

.method private static synthetic getSerialVersionUID$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static synthetic key$default(Lkotlin/script/experimental/util/PropertiesCollection$Companion;Ljava/lang/Object;ZILjava/lang/Object;)Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyDelegate;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 98
    :cond_1
    invoke-virtual {p0, p1, p2}, Lkotlin/script/experimental/util/PropertiesCollection$Companion;->key(Ljava/lang/Object;Z)Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyDelegate;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic key$default(Lkotlin/script/experimental/util/PropertiesCollection$Companion;Lkotlin/jvm/functions/Function1;ZILjava/lang/Object;)Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyDelegate;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 101
    :cond_0
    invoke-virtual {p0, p1, p2}, Lkotlin/script/experimental/util/PropertiesCollection$Companion;->key(Lkotlin/jvm/functions/Function1;Z)Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyDelegate;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic keyCopy$default(Lkotlin/script/experimental/util/PropertiesCollection$Companion;Lkotlin/script/experimental/util/PropertiesCollection$Key;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyCopyDelegate;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 107
    sget-object p2, Lkotlin/script/experimental/util/PropertiesCollection$Companion$keyCopy$1;->INSTANCE:Lkotlin/script/experimental/util/PropertiesCollection$Companion$keyCopy$1;

    check-cast p2, Lkotlin/jvm/functions/Function1;

    .line 106
    :cond_0
    invoke-virtual {p0, p1, p2}, Lkotlin/script/experimental/util/PropertiesCollection$Companion;->keyCopy(Lkotlin/script/experimental/util/PropertiesCollection$Key;Lkotlin/jvm/functions/Function1;)Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyCopyDelegate;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final key(Ljava/lang/Object;Z)Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyDelegate;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;Z)",
            "Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyDelegate<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 99
    new-instance v0, Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyDelegate;

    invoke-direct {v0, p1, p2}, Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyDelegate;-><init>(Ljava/lang/Object;Z)V

    return-object v0
.end method

.method public final key(Lkotlin/jvm/functions/Function1;Z)Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyDelegate;
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/script/experimental/util/PropertiesCollection;",
            "+TT;>;Z)",
            "Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyDelegate<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "getDefaultValue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    new-instance v0, Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyDelegate;

    invoke-direct {v0, p1, p2}, Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyDelegate;-><init>(Lkotlin/jvm/functions/Function1;Z)V

    return-object v0
.end method

.method public final keyCopy(Lkotlin/script/experimental/util/PropertiesCollection$Key;Lkotlin/jvm/functions/Function1;)Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyCopyDelegate;
    .locals 1
    .param p1    # Lkotlin/script/experimental/util/PropertiesCollection$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/script/experimental/util/PropertiesCollection$Key<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/script/experimental/util/PropertiesCollection;",
            "+",
            "Lkotlin/script/experimental/util/PropertiesCollection;",
            ">;)",
            "Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyCopyDelegate<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getSourceProperties"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    new-instance v0, Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyCopyDelegate;

    invoke-direct {v0, p1, p2}, Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyCopyDelegate;-><init>(Lkotlin/script/experimental/util/PropertiesCollection$Key;Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method
