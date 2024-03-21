.class public Lcom/bugsnag/android/MetaData;
.super Ljava/lang/Object;
.source "MetaData.java"

# interfaces
.implements Lcom/bugsnag/android/JsonStream$Streamable;


# instance fields
.field private filters:[Ljava/lang/String;

.field private final store:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/bugsnag/android/MetaData;->store:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/bugsnag/android/MetaData;->store:Ljava/util/Map;

    return-void
.end method

.method static varargs merge([Lcom/bugsnag/android/MetaData;)Lcom/bugsnag/android/MetaData;
    .locals 4

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    .line 92
    aget-object v3, p0, v2

    if-eqz v3, :cond_0

    .line 94
    iget-object v3, v3, Lcom/bugsnag/android/MetaData;->store:Ljava/util/Map;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 98
    :cond_1
    new-instance p0, Lcom/bugsnag/android/MetaData;

    new-array v1, v1, [Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Map;

    invoke-static {v0}, Lcom/bugsnag/android/MetaData;->mergeMaps([Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bugsnag/android/MetaData;-><init>(Ljava/util/Map;)V

    return-object p0
.end method

.method private static varargs mergeMaps([Ljava/util/Map;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 102
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 104
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, p0, v3

    if-eqz v4, :cond_2

    .line 108
    new-instance v5, Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 109
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 111
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 112
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 113
    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_1

    if-eqz v7, :cond_0

    .line 116
    instance-of v9, v7, Ljava/util/Map;

    if-eqz v9, :cond_0

    instance-of v9, v8, Ljava/util/Map;

    if-eqz v9, :cond_0

    const/4 v9, 0x2

    .line 118
    new-array v9, v9, [Ljava/util/Map;

    check-cast v7, Ljava/util/Map;

    aput-object v7, v9, v2

    check-cast v8, Ljava/util/Map;

    const/4 v7, 0x1

    aput-object v8, v9, v7

    invoke-static {v9}, Lcom/bugsnag/android/MetaData;->mergeMaps([Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 120
    :cond_0
    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 124
    :cond_1
    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private objectToStream(Ljava/lang/Object;Lcom/bugsnag/android/JsonStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 135
    invoke-virtual {p2}, Lcom/bugsnag/android/JsonStream;->nullValue()Lcom/bugsnag/android/JsonWriter;

    return-void

    .line 136
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 137
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/bugsnag/android/JsonStream;->value(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    return-void

    .line 138
    :cond_1
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_2

    .line 139
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p2, p1}, Lcom/bugsnag/android/JsonStream;->value(Ljava/lang/Number;)Lcom/bugsnag/android/JsonWriter;

    return-void

    .line 140
    :cond_2
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 141
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p2, p1}, Lcom/bugsnag/android/JsonStream;->value(Ljava/lang/Boolean;)V

    return-void

    .line 142
    :cond_3
    instance-of v0, p1, Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 144
    invoke-virtual {p2}, Lcom/bugsnag/android/JsonStream;->beginObject()Lcom/bugsnag/android/JsonWriter;

    .line 145
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 146
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 147
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 148
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 149
    check-cast v2, Ljava/lang/String;

    .line 150
    invoke-virtual {p2, v2}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    .line 151
    iget-object v3, p0, Lcom/bugsnag/android/MetaData;->filters:[Ljava/lang/String;

    if-eqz v3, :cond_7

    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/bugsnag/android/MetaData;->filters:[Ljava/lang/String;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_7

    aget-object v6, v3, v5

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v2, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_7
    :goto_2
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_8

    const-string v0, "[FILTERED]"

    .line 152
    invoke-virtual {p2, v0}, Lcom/bugsnag/android/JsonStream;->value(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    goto :goto_0

    .line 154
    :cond_8
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/bugsnag/android/MetaData;->objectToStream(Ljava/lang/Object;Lcom/bugsnag/android/JsonStream;)V

    goto :goto_0

    .line 158
    :cond_9
    invoke-virtual {p2}, Lcom/bugsnag/android/JsonStream;->endObject()Lcom/bugsnag/android/JsonWriter;

    return-void

    .line 159
    :cond_a
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_c

    .line 161
    invoke-virtual {p2}, Lcom/bugsnag/android/JsonStream;->beginArray()Lcom/bugsnag/android/JsonWriter;

    .line 162
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 163
    invoke-direct {p0, v0, p2}, Lcom/bugsnag/android/MetaData;->objectToStream(Ljava/lang/Object;Lcom/bugsnag/android/JsonStream;)V

    goto :goto_4

    .line 165
    :cond_b
    invoke-virtual {p2}, Lcom/bugsnag/android/JsonStream;->endArray()Lcom/bugsnag/android/JsonWriter;

    return-void

    .line 166
    :cond_c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 168
    invoke-virtual {p2}, Lcom/bugsnag/android/JsonStream;->beginArray()Lcom/bugsnag/android/JsonWriter;

    .line 169
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    :goto_5
    if-ge v1, v0, :cond_d

    .line 171
    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/bugsnag/android/MetaData;->objectToStream(Ljava/lang/Object;Lcom/bugsnag/android/JsonStream;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 173
    :cond_d
    invoke-virtual {p2}, Lcom/bugsnag/android/JsonStream;->endArray()Lcom/bugsnag/android/JsonWriter;

    return-void

    :cond_e
    const-string p1, "[OBJECT]"

    .line 175
    invoke-virtual {p2, p1}, Lcom/bugsnag/android/JsonStream;->value(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    return-void
.end method


# virtual methods
.method public addToTab(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/bugsnag/android/MetaData;->store:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iget-object v1, p0, Lcom/bugsnag/android/MetaData;->store:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p3, :cond_1

    .line 60
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 62
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clearTab(Ljava/lang/String;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/bugsnag/android/MetaData;->store:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method final varargs setFilters([Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/bugsnag/android/MetaData;->filters:[Ljava/lang/String;

    return-void
.end method

.method public toStream(Lcom/bugsnag/android/JsonStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/bugsnag/android/MetaData;->store:Ljava/util/Map;

    invoke-direct {p0, v0, p1}, Lcom/bugsnag/android/MetaData;->objectToStream(Ljava/lang/Object;Lcom/bugsnag/android/JsonStream;)V

    return-void
.end method
