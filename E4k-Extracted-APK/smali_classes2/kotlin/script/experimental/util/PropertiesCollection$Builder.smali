.class public Lkotlin/script/experimental/util/PropertiesCollection$Builder;
.super Ljava/lang/Object;
.source "propertiesCollection.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/script/experimental/util/PropertiesCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\npropertiesCollection.kt\nKotlin\n*S Kotlin\n*F\n+ 1 propertiesCollection.kt\nkotlin/script/experimental/util/PropertiesCollection$Builder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,290:1\n1819#2,2:291\n11298#3:293\n11633#3,3:294\n11298#3:297\n11633#3,3:298\n11298#3:301\n11633#3,3:302\n11298#3:305\n11633#3,3:306\n11298#3:309\n11633#3,3:310\n11298#3:313\n11633#3,3:314\n11298#3:317\n11633#3,3:318\n1#4:321\n*E\n*S KotlinDebug\n*F\n+ 1 propertiesCollection.kt\nkotlin/script/experimental/util/PropertiesCollection$Builder\n*L\n120#1,2:291\n192#1:293\n192#1,3:294\n212#1:297\n212#1,3:298\n216#1:301\n216#1,3:302\n220#1:305\n220#1,3:306\n227#1:309\n227#1,3:310\n232#1:313\n232#1,3:314\n237#1:317\n237#1,3:318\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u001c\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0008\u0016\u0018\u00002\u00020\u0001B\u0015\u0012\u000e\u0008\u0002\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0002\u0010\u0005J*\u0010\u000b\u001a\u0004\u0018\u0001H\u000c\"\u0008\u0008\u0000\u0010\u000c*\u00020\u00012\u000e\u0010\r\u001a\n\u0012\u0006\u0008\u0000\u0012\u0002H\u000c0\u0008H\u0086\u0002\u00a2\u0006\u0002\u0010\u000eJ\u001c\u0010\u000f\u001a\u00020\u0010\"\u0004\u0008\u0000\u0010\u000c2\u000e\u0010\r\u001a\n\u0012\u0006\u0008\u0000\u0012\u0002H\u000c0\u0008J,\u0010\u0011\u001a\u00020\u0010\"\u0004\u0008\u0000\u0010\u000c2\u000e\u0010\r\u001a\n\u0012\u0006\u0008\u0000\u0012\u0002H\u000c0\u00082\u0006\u0010\u0012\u001a\u0002H\u000cH\u0086\u0002\u00a2\u0006\u0002\u0010\u0013J7\u0010\u0014\u001a\u00020\u0010\"\u0004\u0008\u0000\u0010\u0015*\u0010\u0012\u000c\u0008\u0000\u0012\u0008\u0012\u0004\u0012\u0002H\u00150\u00160\u00082\u0012\u0010\u0017\u001a\n\u0012\u0006\u0008\u0001\u0012\u0002H\u00150\u0018\"\u0002H\u0015\u00a2\u0006\u0002\u0010\u0019J3\u0010\u0014\u001a\u00020\u0010\"\u0004\u0008\u0000\u0010\u0015*\u0010\u0012\u000c\u0008\u0000\u0012\u0008\u0012\u0004\u0012\u0002H\u00150\u00160\u00082\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u0002H\u00150\u0003H\u0007\u00a2\u0006\u0002\u0008\u001aJK\u0010\u0014\u001a\u00020\u0010\"\u0004\u0008\u0000\u0010\u001b\"\u0004\u0008\u0001\u0010\u0015*\u0016\u0012\u0012\u0008\u0000\u0012\u000e\u0012\u0004\u0012\u0002H\u001b\u0012\u0004\u0012\u0002H\u00150\u001c0\u00082\u0018\u0010\u0017\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u001b\u0012\u0004\u0012\u0002H\u00150\u001d0\u0003H\u0007\u00a2\u0006\u0002\u0008\u001eJ>\u0010\u0014\u001a\u00020\u0010\"\u0004\u0008\u0000\u0010\u001b\"\u0004\u0008\u0001\u0010\u0015*\u0016\u0012\u0012\u0008\u0000\u0012\u000e\u0012\u0004\u0012\u0002H\u001b\u0012\u0004\u0012\u0002H\u00150\u001c0\u00082\u0012\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u0002H\u001b\u0012\u0004\u0012\u0002H\u00150\u001cJ5\u0010\u001f\u001a\u00020\u0010\"\u0008\u0008\u0000\u0010\u000c*\u00020\u0000*\u0002H\u000c2\u0017\u0010 \u001a\u0013\u0012\u0004\u0012\u0002H\u000c\u0012\u0004\u0012\u00020\u00100!\u00a2\u0006\u0002\u0008\"H\u0086\u0002\u00a2\u0006\u0002\u0010#J$\u0010\u001f\u001a\u0004\u0018\u0001H\u000c\"\u0008\u0008\u0000\u0010\u000c*\u00020\u0001*\u0008\u0012\u0004\u0012\u0002H\u000c0\u0008H\u0086\u0002\u00a2\u0006\u0002\u0010\u000eJ&\u0010\u001f\u001a\u00020\u0010\"\u0004\u0008\u0000\u0010\u000c*\u0008\u0012\u0004\u0012\u0002H\u000c0\u00082\u0006\u0010$\u001a\u0002H\u000cH\u0086\u0002\u00a2\u0006\u0002\u0010\u0013J:\u0010\u001f\u001a\u00020\u0010\"\u0004\u0008\u0000\u0010\u000c*\u0010\u0012\u000c\u0008\u0000\u0012\u0008\u0012\u0004\u0012\u0002H\u000c0\u00160\u00082\u0012\u0010%\u001a\n\u0012\u0006\u0008\u0001\u0012\u0002H\u000c0\u0018\"\u0002H\u000cH\u0086\u0002\u00a2\u0006\u0002\u0010\u0019J>\u0010\u001f\u001a\u00020\u0010*\u0010\u0012\u000c\u0008\u0000\u0012\u0008\u0012\u0004\u0012\u00020&0\u00160\u00082\u001a\u0010\'\u001a\u000e\u0012\n\u0008\u0001\u0012\u0006\u0012\u0002\u0008\u00030(0\u0018\"\u0006\u0012\u0002\u0008\u00030(H\u0087\u0002\u00a2\u0006\u0004\u0008)\u0010*J$\u0010\u001f\u001a\u00020\u0010*\u0008\u0012\u0004\u0012\u00020&0\u00082\n\u0010+\u001a\u0006\u0012\u0002\u0008\u00030(H\u0087\u0002\u00a2\u0006\u0002\u0008,J2\u0010\u001f\u001a\u00020\u0010*\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020-0\u00160\u00082\u0012\u0010.\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020&0\u0018\"\u00020&H\u0086\u0002\u00a2\u0006\u0002\u0010/J:\u0010\u001f\u001a\u00020\u0010*\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020-0\u00160\u00082\u001a\u00100\u001a\u000e\u0012\n\u0008\u0001\u0012\u0006\u0012\u0002\u0008\u00030(0\u0018\"\u0006\u0012\u0002\u0008\u00030(H\u0086\u0002\u00a2\u0006\u0002\u0010*J2\u0010\u001f\u001a\u00020\u0010*\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020-0\u00160\u00082\u0012\u00101\u001a\n\u0012\u0006\u0008\u0001\u0012\u0002020\u0018\"\u000202H\u0086\u0002\u00a2\u0006\u0002\u00103J\\\u0010\u001f\u001a\u00020\u0010\"\u0004\u0008\u0000\u0010\u001b\"\u0004\u0008\u0001\u0010\u0015*\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u001b\u0012\u0004\u0012\u0002H\u00150\u001c0\u00082*\u00104\u001a\u0016\u0012\u0012\u0008\u0001\u0012\u000e\u0012\u0004\u0012\u0002H\u001b\u0012\u0004\u0012\u0002H\u00150\u001d0\u0018\"\u000e\u0012\u0004\u0012\u0002H\u001b\u0012\u0004\u0012\u0002H\u00150\u001dH\u0086\u0002\u00a2\u0006\u0002\u00105JX\u0010\u001f\u001a\u00020\u0010\"\u0004\u0008\u0000\u0010\u001b*\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u001b\u0012\u0004\u0012\u00020-0\u001c0\u00082*\u0010.\u001a\u0016\u0012\u0012\u0008\u0001\u0012\u000e\u0012\u0004\u0012\u0002H\u001b\u0012\u0004\u0012\u00020&0\u001d0\u0018\"\u000e\u0012\u0004\u0012\u0002H\u001b\u0012\u0004\u0012\u00020&0\u001dH\u0087\u0002\u00a2\u0006\u0004\u00086\u00105J`\u0010\u001f\u001a\u00020\u0010\"\u0004\u0008\u0000\u0010\u001b*\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u001b\u0012\u0004\u0012\u00020-0\u001c0\u000822\u00100\u001a\u001a\u0012\u0016\u0008\u0001\u0012\u0012\u0012\u0004\u0012\u0002H\u001b\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030(0\u001d0\u0018\"\u0012\u0012\u0004\u0012\u0002H\u001b\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030(0\u001dH\u0087\u0002\u00a2\u0006\u0004\u00087\u00105JX\u0010\u001f\u001a\u00020\u0010\"\u0004\u0008\u0000\u0010\u001b*\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u001b\u0012\u0004\u0012\u00020-0\u001c0\u00082*\u00101\u001a\u0016\u0012\u0012\u0008\u0001\u0012\u000e\u0012\u0004\u0012\u0002H\u001b\u0012\u0004\u0012\u0002020\u001d0\u0018\"\u000e\u0012\u0004\u0012\u0002H\u001b\u0012\u0004\u0012\u0002020\u001dH\u0087\u0002\u00a2\u0006\u0004\u00088\u00105J\u001b\u0010\u001f\u001a\u00020\u0010*\u0008\u0012\u0004\u0012\u00020-0\u00082\u0006\u00109\u001a\u00020&H\u0086\u0002J\u001f\u0010\u001f\u001a\u00020\u0010*\u0008\u0012\u0004\u0012\u00020-0\u00082\n\u0010+\u001a\u0006\u0012\u0002\u0008\u00030(H\u0086\u0002J\u001b\u0010\u001f\u001a\u00020\u0010*\u0008\u0012\u0004\u0012\u00020-0\u00082\u0006\u0010:\u001a\u000202H\u0086\u0002J#\u0010;\u001a\u00020\u0010\"\u0004\u0008\u0000\u0010\u000c*\u0008\u0012\u0004\u0012\u0002H\u000c0\u00082\u0006\u0010$\u001a\u0002H\u000c\u00a2\u0006\u0002\u0010\u0013J.\u0010<\u001a\u00020\u0010\"\u0004\u0008\u0000\u0010\u000c*\u0010\u0012\u000c\u0008\u0000\u0012\u0008\u0012\u0004\u0012\u0002H\u000c0\u00160\u00082\u000e\u0010%\u001a\n\u0012\u0004\u0012\u0002H\u000c\u0018\u00010\u0003JM\u0010<\u001a\u00020\u0010\"\u0004\u0008\u0000\u0010\u001b\"\u0004\u0008\u0001\u0010\u0015*\u0016\u0012\u0012\u0008\u0000\u0012\u000e\u0012\u0004\u0012\u0002H\u001b\u0012\u0004\u0012\u0002H\u00150\u001c0\u00082\u001a\u0010%\u001a\u0016\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u001b\u0012\u0004\u0012\u0002H\u00150\u001d\u0018\u00010\u0003H\u0007\u00a2\u0006\u0002\u0008=J@\u0010<\u001a\u00020\u0010\"\u0004\u0008\u0000\u0010\u001b\"\u0004\u0008\u0001\u0010\u0015*\u0016\u0012\u0012\u0008\u0000\u0012\u000e\u0012\u0004\u0012\u0002H\u001b\u0012\u0004\u0012\u0002H\u00150\u001c0\u00082\u0014\u0010%\u001a\u0010\u0012\u0004\u0012\u0002H\u001b\u0012\u0004\u0012\u0002H\u0015\u0018\u00010\u001cJ%\u0010>\u001a\u00020\u0010\"\u0004\u0008\u0000\u0010\u000c*\u0008\u0012\u0004\u0012\u0002H\u000c0\u00082\u0008\u0010$\u001a\u0004\u0018\u0001H\u000c\u00a2\u0006\u0002\u0010\u0013J%\u0010?\u001a\u00020\u0010\"\u0004\u0008\u0000\u0010\u000c*\u0008\u0012\u0004\u0012\u0002H\u000c0\u00082\u0008\u0010$\u001a\u0004\u0018\u0001H\u000c\u00a2\u0006\u0002\u0010\u0013J.\u0010@\u001a\u00020\u0010\"\u0004\u0008\u0000\u0010\u000c*\u0008\u0012\u0004\u0012\u0002H\u000c0\u00082\u0016\u0010 \u001a\u0012\u0012\u0006\u0012\u0004\u0018\u0001H\u000c\u0012\u0006\u0012\u0004\u0018\u0001H\u000c0!R#\u0010\u0006\u001a\u0014\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0008\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006A"
    }
    d2 = {
        "Lkotlin/script/experimental/util/PropertiesCollection$Builder;",
        "",
        "baseProperties",
        "",
        "Lkotlin/script/experimental/util/PropertiesCollection;",
        "(Ljava/lang/Iterable;)V",
        "data",
        "",
        "Lkotlin/script/experimental/util/PropertiesCollection$Key;",
        "getData",
        "()Ljava/util/Map;",
        "get",
        "T",
        "key",
        "(Lkotlin/script/experimental/util/PropertiesCollection$Key;)Ljava/lang/Object;",
        "reset",
        "",
        "set",
        "value",
        "(Lkotlin/script/experimental/util/PropertiesCollection$Key;Ljava/lang/Object;)V",
        "append",
        "V",
        "",
        "values",
        "",
        "(Lkotlin/script/experimental/util/PropertiesCollection$Key;[Ljava/lang/Object;)V",
        "appendToList",
        "K",
        "",
        "Lkotlin/Pair;",
        "appendToMap",
        "invoke",
        "body",
        "Lkotlin/Function1;",
        "Lkotlin/ExtensionFunctionType;",
        "(Lkotlin/script/experimental/util/PropertiesCollection$Builder;Lkotlin/jvm/functions/Function1;)V",
        "v",
        "vals",
        "",
        "kclasses",
        "Lkotlin/reflect/KClass;",
        "invoke_string_list_fqn_from_reflected_class",
        "(Lkotlin/script/experimental/util/PropertiesCollection$Key;[Lkotlin/reflect/KClass;)V",
        "kclass",
        "invoke_string_fqn_from_reflected_class",
        "Lkotlin/script/experimental/api/KotlinType;",
        "fqnames",
        "(Lkotlin/script/experimental/util/PropertiesCollection$Key;[Ljava/lang/String;)V",
        "classes",
        "types",
        "Lkotlin/reflect/KType;",
        "(Lkotlin/script/experimental/util/PropertiesCollection$Key;[Lkotlin/reflect/KType;)V",
        "vs",
        "(Lkotlin/script/experimental/util/PropertiesCollection$Key;[Lkotlin/Pair;)V",
        "invoke_kotlintype_map_from_fqname",
        "invoke_kotlintype_map_from_kclass",
        "invoke_kotlintype_map_from_ktype",
        "fqname",
        "ktype",
        "put",
        "putIfAny",
        "putIfAny_map",
        "putIfNotNull",
        "replaceOnlyDefault",
        "update",
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
.field private final data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lkotlin/script/experimental/util/PropertiesCollection$Key<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lkotlin/script/experimental/util/PropertiesCollection$Builder;-><init>(Ljava/lang/Iterable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 2
    .param p1    # Ljava/lang/Iterable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lkotlin/script/experimental/util/PropertiesCollection;",
            ">;)V"
        }
    .end annotation

    const-string v0, "baseProperties"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 291
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/script/experimental/util/PropertiesCollection;

    .line 120
    invoke-virtual {v1}, Lkotlin/script/experimental/util/PropertiesCollection;->getProperties()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    goto :goto_0

    .line 121
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 119
    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lkotlin/script/experimental/util/PropertiesCollection$Builder;->data:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Iterable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 117
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    :cond_0
    invoke-direct {p0, p1}, Lkotlin/script/experimental/util/PropertiesCollection$Builder;-><init>(Ljava/lang/Iterable;)V

    return-void
.end method


# virtual methods
.method public final append(Lkotlin/script/experimental/util/PropertiesCollection$Key;Ljava/util/Map;)V
    .locals 1
    .param p1    # Lkotlin/script/experimental/util/PropertiesCollection$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/script/experimental/util/PropertiesCollection$Key<",
            "-",
            "Ljava/util/Map<",
            "TK;+TV;>;>;",
            "Ljava/util/Map<",
            "TK;+TV;>;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    invoke-virtual {p0, p1}, Lkotlin/script/experimental/util/PropertiesCollection$Builder;->get(Lkotlin/script/experimental/util/PropertiesCollection$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0, p2}, Lkotlin/collections/MapsKt;->plus(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object p2, v0

    .line 270
    :goto_0
    iget-object v0, p0, Lkotlin/script/experimental/util/PropertiesCollection$Builder;->data:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final varargs append(Lkotlin/script/experimental/util/PropertiesCollection$Key;[Ljava/lang/Object;)V
    .locals 1
    .param p1    # Lkotlin/script/experimental/util/PropertiesCollection$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/script/experimental/util/PropertiesCollection$Key<",
            "-",
            "Ljava/util/List<",
            "+TV;>;>;[TV;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    invoke-virtual {p0, p1}, Lkotlin/script/experimental/util/PropertiesCollection$Builder;->get(Lkotlin/script/experimental/util/PropertiesCollection$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    check-cast v0, Ljava/util/Collection;

    invoke-static {v0, p2}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    invoke-static {p2}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 265
    :cond_1
    iget-object p2, p0, Lkotlin/script/experimental/util/PropertiesCollection$Builder;->data:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final appendToList(Lkotlin/script/experimental/util/PropertiesCollection$Key;Ljava/lang/Iterable;)V
    .locals 1
    .param p1    # Lkotlin/script/experimental/util/PropertiesCollection$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Iterable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/script/experimental/util/PropertiesCollection$Key<",
            "-",
            "Ljava/util/List<",
            "+TV;>;>;",
            "Ljava/lang/Iterable<",
            "+TV;>;)V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "appendToList"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    invoke-virtual {p0, p1}, Lkotlin/script/experimental/util/PropertiesCollection$Builder;->get(Lkotlin/script/experimental/util/PropertiesCollection$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    check-cast v0, Ljava/util/Collection;

    invoke-static {v0, p2}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 260
    :cond_1
    iget-object p2, p0, Lkotlin/script/experimental/util/PropertiesCollection$Builder;->data:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final appendToMap(Lkotlin/script/experimental/util/PropertiesCollection$Key;Ljava/lang/Iterable;)V
    .locals 1
    .param p1    # Lkotlin/script/experimental/util/PropertiesCollection$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Iterable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/script/experimental/util/PropertiesCollection$Key<",
            "-",
            "Ljava/util/Map<",
            "TK;+TV;>;>;",
            "Ljava/lang/Iterable<",
            "+",
            "Lkotlin/Pair<",
            "+TK;+TV;>;>;)V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "appendToMap"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    invoke-virtual {p0, p1}, Lkotlin/script/experimental/util/PropertiesCollection$Builder;->get(Lkotlin/script/experimental/util/PropertiesCollection$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0, p2}, Lkotlin/collections/MapsKt;->plus(Ljava/util/Map;Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    invoke-static {p2}, Lkotlin/collections/MapsKt;->toMap(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v0

    .line 276
    :cond_1
    iget-object p2, p0, Lkotlin/script/experimental/util/PropertiesCollection$Builder;->data:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final get(Lkotlin/script/experimental/util/PropertiesCollection$Key;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lkotlin/script/experimental/util/PropertiesCollection$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/script/experimental/util/PropertiesCollection$Key<",
            "-TT;>;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lkotlin/script/experimental/util/PropertiesCollection$Builder;->data:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method

.method public final getData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lkotlin/script/experimental/util/PropertiesCollection$Key<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 119
    iget-object v0, p0, Lkotlin/script/experimental/util/PropertiesCollection$Builder;->data:Ljava/util/Map;

    return-object v0
.end method

.method public final invoke(Lkotlin/script/experimental/util/PropertiesCollection$Key;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lkotlin/script/experimental/util/PropertiesCollection$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/script/experimental/util/PropertiesCollection$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    invoke-virtual {p0, p1}, Lkotlin/script/experimental/util/PropertiesCollection$Builder;->get(Lkotlin/script/experimental/util/PropertiesCollection$Key;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/script/experimental/util/PropertiesCollection$Builder;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lkotlin/script/experimental/util/PropertiesCollection$Builder;
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
            "Lkotlin/script/experimental/util/PropertiesCollection$Builder;",
            ">(TT;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    iget-object p2, p0, Lkotlin/script/experimental/util/PropertiesCollection$Builder;->data:Ljava/util/Map;

    iget-object p1, p1, Lkotlin/script/experimental/util/PropertiesCollection$Builder;->data:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public final invoke(Lkotlin/script/experimental/util/PropertiesCollection$Key;Ljava/lang/Object;)V
    .locals 1
    .param p1    # Lkotlin/script/experimental/util/PropertiesCollection$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/script/experimental/util/PropertiesCollection$Key<",
            "TT;>;TT;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lkotlin/script/experimental/util/PropertiesCollection$Builder;->data:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final invoke(Lkotlin/script/experimental/util/PropertiesCollection$Key;Ljava/lang/String;)V
    .locals 2
    .param p1    # Lkotlin/script/experimental/util/PropertiesCollection$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/script/experimental/util/PropertiesCollection$Key<",
            "Lkotlin/script/experimental/api/KotlinType;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fqname"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lkotlin/script/experimental/util/PropertiesCollection$Builder;->data:Ljava/util/Map;

    new-instance v1, Lkotlin/script/experimental/api/KotlinType;

    invoke-direct {v1, p2}, Lkotlin/script/experimental/api/KotlinType;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final invoke(Lkotlin/script/experimental/util/PropertiesCollection$Key;Lkotlin/reflect/KClass;)V
    .locals 2
    .param p1    # Lkotlin/script/experimental/util/PropertiesCollection$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/reflect/KClass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/script/experimental/util/PropertiesCollection$Key<",
            "Lkotlin/script/experimental/api/KotlinType;",
            ">;",
            "Lkotlin/reflect/KClass<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kclass"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lkotlin/script/experimental/util/PropertiesCollection$Builder;->data:Ljava/util/Map;

    new-instance v1, Lkotlin/script/experimental/api/KotlinType;

    invoke-direct {v1, p2}, Lkotlin/script/experimental/api/KotlinType;-><init>(Lkotlin/reflect/KClass;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final invoke(Lkotlin/script/experimental/util/PropertiesCollection$Key;Lkotlin/reflect/KType;)V
    .locals 2
    .param p1    # Lkotlin/script/experimental/util/PropertiesCollection$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/reflect/KType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/script/experimental/util/PropertiesCollection$Key<",
            "Lkotlin/script/experimental/api/KotlinType;",
            ">;",
            "Lkotlin/reflect/KType;",
            ")V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ktype"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lkotlin/script/experimental/util/PropertiesCollection$Builder;->data:Ljava/util/Map;

    new-instance v1, Lkotlin/script/experimental/api/KotlinType;

    invoke-direct {v1, p2}, Lkotlin/script/experimental/api/KotlinType;-><init>(Lkotlin/reflect/KType;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final varargs invoke(Lkotlin/script/experimental/util/PropertiesCollection$Key;[Ljava/lang/Object;)V
    .locals 1
    .param p1    # Lkotlin/script/experimental/util/PropertiesCollection$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/script/experimental/util/PropertiesCollection$Key<",
            "-",
            "Ljava/util/List<",
            "+TT;>;>;[TT;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vals"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    invoke-static {p2}, Lkotlin/collections/ArraysKt;->asIterable([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lkotlin/script/experimental/util/PropertiesCollection$Builder;->appendToList(Lkotlin/script/experimental/util/PropertiesCollection$Key;Ljava/lang/Iterable;)V

    return-void
.end method

.method public final varargs invoke(Lkotlin/script/experimental/util/PropertiesCollection$Key;[Ljava/lang/String;)V
    .locals 5
    .param p1    # Lkotlin/script/experimental/util/PropertiesCollection$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/script/experimental/util/PropertiesCollection$Key<",
            "Ljava/util/List<",
            "Lkotlin/script/experimental/api/KotlinType;",
            ">;>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fqnames"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 305
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 306
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p2, v2

    .line 220
    new-instance v4, Lkotlin/script/experimental/api/KotlinType;

    invoke-direct {v4, v3}, Lkotlin/script/experimental/api/KotlinType;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 308
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 305
    check-cast v0, Ljava/lang/Iterable;

    .line 220
    invoke-virtual {p0, p1, v0}, Lkotlin/script/experimental/util/PropertiesCollection$Builder;->appendToList(Lkotlin/script/experimental/util/PropertiesCollection$Key;Ljava/lang/Iterable;)V

    return-void
.end method

.method public final varargs invoke(Lkotlin/script/experimental/util/PropertiesCollection$Key;[Lkotlin/Pair;)V
    .locals 1
    .param p1    # Lkotlin/script/experimental/util/PropertiesCollection$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Lkotlin/Pair;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/script/experimental/util/PropertiesCollection$Key<",
            "Ljava/util/Map<",
            "TK;TV;>;>;[",
            "Lkotlin/Pair<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    invoke-static {p2}, Lkotlin/collections/ArraysKt;->asIterable([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lkotlin/script/experimental/util/PropertiesCollection$Builder;->appendToMap(Lkotlin/script/experimental/util/PropertiesCollection$Key;Ljava/lang/Iterable;)V

    return-void
.end method

.method public final varargs invoke(Lkotlin/script/experimental/util/PropertiesCollection$Key;[Lkotlin/reflect/KClass;)V
    .locals 5
    .param p1    # Lkotlin/script/experimental/util/PropertiesCollection$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Lkotlin/reflect/KClass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/script/experimental/util/PropertiesCollection$Key<",
            "Ljava/util/List<",
            "Lkotlin/script/experimental/api/KotlinType;",
            ">;>;[",
            "Lkotlin/reflect/KClass<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 297
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 298
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p2, v2

    .line 212
    new-instance v4, Lkotlin/script/experimental/api/KotlinType;

    invoke-direct {v4, v3}, Lkotlin/script/experimental/api/KotlinType;-><init>(Lkotlin/reflect/KClass;)V

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 300
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 297
    check-cast v0, Ljava/lang/Iterable;

    .line 212
    invoke-virtual {p0, p1, v0}, Lkotlin/script/experimental/util/PropertiesCollection$Builder;->appendToList(Lkotlin/script/experimental/util/PropertiesCollection$Key;Ljava/lang/Iterable;)V

    return-void
.end method

.method public final varargs invoke(Lkotlin/script/experimental/util/PropertiesCollection$Key;[Lkotlin/reflect/KType;)V
    .locals 5
    .param p1    # Lkotlin/script/experimental/util/PropertiesCollection$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Lkotlin/reflect/KType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/script/experimental/util/PropertiesCollection$Key<",
            "Ljava/util/List<",
            "Lkotlin/script/experimental/api/KotlinType;",
            ">;>;[",
            "Lkotlin/reflect/KType;",
            ")V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "types"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 302
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p2, v2

    .line 216
    new-instance v4, Lkotlin/script/experimental/api/KotlinType;

    invoke-direct {v4, v3}, Lkotlin/script/experimental/api/KotlinType;-><init>(Lkotlin/reflect/KType;)V

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 304
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 301
    check-cast v0, Ljava/lang/Iterable;

    .line 216
    invoke-virtual {p0, p1, v0}, Lkotlin/script/experimental/util/PropertiesCollection$Builder;->appendToList(Lkotlin/script/experimental/util/PropertiesCollection$Key;Ljava/lang/Iterable;)V

    return-void
.end method

.method public final varargs invoke_kotlintype_map_from_fqname(Lkotlin/script/experimental/util/PropertiesCollection$Key;[Lkotlin/Pair;)V
    .locals 6
    .param p1    # Lkotlin/script/experimental/util/PropertiesCollection$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Lkotlin/Pair;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/script/experimental/util/PropertiesCollection$Key<",
            "Ljava/util/Map<",
            "TK;",
            "Lkotlin/script/experimental/api/KotlinType;",
            ">;>;[",
            "Lkotlin/Pair<",
            "+TK;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "invoke_kotlintype_map_from_fqname"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fqnames"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 317
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 318
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p2, v2

    .line 237
    invoke-virtual {v3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v5, Lkotlin/script/experimental/api/KotlinType;

    invoke-direct {v5, v3}, Lkotlin/script/experimental/api/KotlinType;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 320
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 317
    check-cast v0, Ljava/lang/Iterable;

    .line 237
    invoke-virtual {p0, p1, v0}, Lkotlin/script/experimental/util/PropertiesCollection$Builder;->appendToMap(Lkotlin/script/experimental/util/PropertiesCollection$Key;Ljava/lang/Iterable;)V

    return-void
.end method

.method public final varargs invoke_kotlintype_map_from_kclass(Lkotlin/script/experimental/util/PropertiesCollection$Key;[Lkotlin/Pair;)V
    .locals 6
    .param p1    # Lkotlin/script/experimental/util/PropertiesCollection$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Lkotlin/Pair;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/script/experimental/util/PropertiesCollection$Key<",
            "Ljava/util/Map<",
            "TK;",
            "Lkotlin/script/experimental/api/KotlinType;",
            ">;>;[",
            "Lkotlin/Pair<",
            "+TK;+",
            "Lkotlin/reflect/KClass<",
            "*>;>;)V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "invoke_kotlintype_map_from_kclass"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 309
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 310
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p2, v2

    .line 227
    invoke-virtual {v3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/KClass;

    new-instance v5, Lkotlin/script/experimental/api/KotlinType;

    invoke-direct {v5, v3}, Lkotlin/script/experimental/api/KotlinType;-><init>(Lkotlin/reflect/KClass;)V

    invoke-static {v4, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 312
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 309
    check-cast v0, Ljava/lang/Iterable;

    .line 227
    invoke-virtual {p0, p1, v0}, Lkotlin/script/experimental/util/PropertiesCollection$Builder;->appendToMap(Lkotlin/script/experimental/util/PropertiesCollection$Key;Ljava/lang/Iterable;)V

    return-void
.end method

.method public final varargs invoke_kotlintype_map_from_ktype(Lkotlin/script/experimental/util/PropertiesCollection$Key;[Lkotlin/Pair;)V
    .locals 6
    .param p1    # Lkotlin/script/experimental/util/PropertiesCollection$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Lkotlin/Pair;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/script/experimental/util/PropertiesCollection$Key<",
            "Ljava/util/Map<",
            "TK;",
            "Lkotlin/script/experimental/api/KotlinType;",
            ">;>;[",
            "Lkotlin/Pair<",
            "+TK;+",
            "Lkotlin/reflect/KType;",
            ">;)V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "invoke_kotlintype_map_from_ktype"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "types"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 313
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 314
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p2, v2

    .line 232
    invoke-virtual {v3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/KType;

    new-instance v5, Lkotlin/script/experimental/api/KotlinType;

    invoke-direct {v5, v3}, Lkotlin/script/experimental/api/KotlinType;-><init>(Lkotlin/reflect/KType;)V

    invoke-static {v4, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 316
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 313
    check-cast v0, Ljava/lang/Iterable;

    .line 232
    invoke-virtual {p0, p1, v0}, Lkotlin/script/experimental/util/PropertiesCollection$Builder;->appendToMap(Lkotlin/script/experimental/util/PropertiesCollection$Key;Ljava/lang/Iterable;)V

    return-void
.end method

.method public final invoke_string_fqn_from_reflected_class(Lkotlin/script/experimental/util/PropertiesCollection$Key;Lkotlin/reflect/KClass;)V
    .locals 1
    .param p1    # Lkotlin/script/experimental/util/PropertiesCollection$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/reflect/KClass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/script/experimental/util/PropertiesCollection$Key<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/reflect/KClass<",
            "*>;)V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "invoke_string_fqn_from_reflected_class"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kclass"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lkotlin/script/experimental/util/PropertiesCollection$Builder;->data:Ljava/util/Map;

    invoke-static {p2}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final varargs invoke_string_list_fqn_from_reflected_class(Lkotlin/script/experimental/util/PropertiesCollection$Key;[Lkotlin/reflect/KClass;)V
    .locals 4
    .param p1    # Lkotlin/script/experimental/util/PropertiesCollection$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Lkotlin/reflect/KClass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/script/experimental/util/PropertiesCollection$Key<",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;[",
            "Lkotlin/reflect/KClass<",
            "*>;)V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "invoke_string_list_fqn_from_reflected_class"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kclasses"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 294
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p2, v2

    .line 192
    invoke-static {v3}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 296
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 293
    check-cast v0, Ljava/lang/Iterable;

    .line 192
    invoke-virtual {p0, p1, v0}, Lkotlin/script/experimental/util/PropertiesCollection$Builder;->appendToList(Lkotlin/script/experimental/util/PropertiesCollection$Key;Ljava/lang/Iterable;)V

    return-void
.end method

.method public final put(Lkotlin/script/experimental/util/PropertiesCollection$Key;Ljava/lang/Object;)V
    .locals 1
    .param p1    # Lkotlin/script/experimental/util/PropertiesCollection$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/script/experimental/util/PropertiesCollection$Key<",
            "TT;>;TT;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lkotlin/script/experimental/util/PropertiesCollection$Builder;->data:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final putIfAny(Lkotlin/script/experimental/util/PropertiesCollection$Key;Ljava/lang/Iterable;)V
    .locals 2
    .param p1    # Lkotlin/script/experimental/util/PropertiesCollection$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Iterable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/script/experimental/util/PropertiesCollection$Key<",
            "-",
            "Ljava/util/List<",
            "+TT;>;>;",
            "Ljava/lang/Iterable<",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 155
    :cond_0
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->any(Ljava/lang/Iterable;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 156
    iget-object v0, p0, Lkotlin/script/experimental/util/PropertiesCollection$Builder;->data:Ljava/util/Map;

    instance-of v1, p2, Ljava/util/List;

    if-eqz v1, :cond_1

    check-cast p2, Ljava/util/List;

    goto :goto_1

    :cond_1
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p2

    :goto_1
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public final putIfAny(Lkotlin/script/experimental/util/PropertiesCollection$Key;Ljava/util/Map;)V
    .locals 2
    .param p1    # Lkotlin/script/experimental/util/PropertiesCollection$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/script/experimental/util/PropertiesCollection$Key<",
            "-",
            "Ljava/util/Map<",
            "TK;+TV;>;>;",
            "Ljava/util/Map<",
            "TK;+TV;>;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-nez p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 174
    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lkotlin/script/experimental/util/PropertiesCollection$Builder;->data:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final putIfAny_map(Lkotlin/script/experimental/util/PropertiesCollection$Key;Ljava/lang/Iterable;)V
    .locals 2
    .param p1    # Lkotlin/script/experimental/util/PropertiesCollection$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Iterable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/script/experimental/util/PropertiesCollection$Key<",
            "-",
            "Ljava/util/Map<",
            "TK;+TV;>;>;",
            "Ljava/lang/Iterable<",
            "+",
            "Lkotlin/Pair<",
            "+TK;+TV;>;>;)V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "putIfAny_map"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 168
    :cond_0
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->any(Ljava/lang/Iterable;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lkotlin/script/experimental/util/PropertiesCollection$Builder;->data:Ljava/util/Map;

    invoke-static {p2}, Lkotlin/collections/MapsKt;->toMap(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final putIfNotNull(Lkotlin/script/experimental/util/PropertiesCollection$Key;Ljava/lang/Object;)V
    .locals 1
    .param p1    # Lkotlin/script/experimental/util/PropertiesCollection$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/script/experimental/util/PropertiesCollection$Key<",
            "TT;>;TT;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 135
    iget-object v0, p0, Lkotlin/script/experimental/util/PropertiesCollection$Builder;->data:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final replaceOnlyDefault(Lkotlin/script/experimental/util/PropertiesCollection$Key;Ljava/lang/Object;)V
    .locals 4
    .param p1    # Lkotlin/script/experimental/util/PropertiesCollection$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/script/experimental/util/PropertiesCollection$Key<",
            "TT;>;TT;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lkotlin/script/experimental/util/PropertiesCollection$Builder;->data:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkotlin/script/experimental/util/PropertiesCollection$Builder;->data:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lkotlin/script/experimental/util/PropertiesCollection$Key;->getGetDefaultValue()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    new-instance v2, Lkotlin/script/experimental/util/PropertiesCollection;

    iget-object v3, p0, Lkotlin/script/experimental/util/PropertiesCollection$Builder;->data:Ljava/util/Map;

    invoke-direct {v2, v3}, Lkotlin/script/experimental/util/PropertiesCollection;-><init>(Ljava/util/Map;)V

    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    :cond_0
    iget-object v0, p0, Lkotlin/script/experimental/util/PropertiesCollection$Builder;->data:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final reset(Lkotlin/script/experimental/util/PropertiesCollection$Key;)V
    .locals 1
    .param p1    # Lkotlin/script/experimental/util/PropertiesCollection$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/script/experimental/util/PropertiesCollection$Key<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lkotlin/script/experimental/util/PropertiesCollection$Builder;->data:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final set(Lkotlin/script/experimental/util/PropertiesCollection$Key;Ljava/lang/Object;)V
    .locals 1
    .param p1    # Lkotlin/script/experimental/util/PropertiesCollection$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/script/experimental/util/PropertiesCollection$Key<",
            "-TT;>;TT;)V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lkotlin/script/experimental/util/PropertiesCollection$Builder;->data:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final update(Lkotlin/script/experimental/util/PropertiesCollection$Key;Lkotlin/jvm/functions/Function1;)V
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
            "-TT;+TT;>;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lkotlin/script/experimental/util/PropertiesCollection$Builder;->data:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lkotlin/script/experimental/util/PropertiesCollection$Builder;->putIfNotNull(Lkotlin/script/experimental/util/PropertiesCollection$Key;Ljava/lang/Object;)V

    return-void
.end method
