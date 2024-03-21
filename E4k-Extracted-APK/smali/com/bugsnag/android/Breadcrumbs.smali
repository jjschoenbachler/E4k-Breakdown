.class final Lcom/bugsnag/android/Breadcrumbs;
.super Ljava/lang/Object;
.source "Breadcrumbs.java"

# interfaces
.implements Lcom/bugsnag/android/JsonStream$Streamable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bugsnag/android/Breadcrumbs$Breadcrumb;
    }
.end annotation


# instance fields
.field private maxSize:I

.field private store:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bugsnag/android/Breadcrumbs$Breadcrumb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/bugsnag/android/Breadcrumbs;->store:Ljava/util/List;

    const/16 v0, 0x14

    .line 22
    iput v0, p0, Lcom/bugsnag/android/Breadcrumbs;->maxSize:I

    return-void
.end method


# virtual methods
.method final add(Ljava/lang/String;)V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/bugsnag/android/Breadcrumbs;->store:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/bugsnag/android/Breadcrumbs;->maxSize:I

    if-lt v0, v1, :cond_0

    .line 39
    iget-object v0, p0, Lcom/bugsnag/android/Breadcrumbs;->store:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/bugsnag/android/Breadcrumbs;->store:Ljava/util/List;

    new-instance v1, Lcom/bugsnag/android/Breadcrumbs$Breadcrumb;

    invoke-direct {v1, p1}, Lcom/bugsnag/android/Breadcrumbs$Breadcrumb;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final clear()V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/bugsnag/android/Breadcrumbs;->store:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method final setSize(I)V
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/bugsnag/android/Breadcrumbs;->store:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 51
    iput p1, p0, Lcom/bugsnag/android/Breadcrumbs;->maxSize:I

    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/bugsnag/android/Breadcrumbs;->store:Ljava/util/List;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/bugsnag/android/Breadcrumbs;->store:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, p1

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final toStream(Lcom/bugsnag/android/JsonStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    invoke-virtual {p1}, Lcom/bugsnag/android/JsonStream;->beginArray()Lcom/bugsnag/android/JsonWriter;

    .line 27
    iget-object v0, p0, Lcom/bugsnag/android/Breadcrumbs;->store:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bugsnag/android/Breadcrumbs$Breadcrumb;

    .line 28
    invoke-virtual {p1}, Lcom/bugsnag/android/JsonStream;->beginArray()Lcom/bugsnag/android/JsonWriter;

    .line 29
    invoke-static {v1}, Lcom/bugsnag/android/Breadcrumbs$Breadcrumb;->access$000(Lcom/bugsnag/android/Breadcrumbs$Breadcrumb;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/bugsnag/android/JsonStream;->value(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    .line 30
    invoke-static {v1}, Lcom/bugsnag/android/Breadcrumbs$Breadcrumb;->access$100(Lcom/bugsnag/android/Breadcrumbs$Breadcrumb;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/bugsnag/android/JsonStream;->value(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    .line 31
    invoke-virtual {p1}, Lcom/bugsnag/android/JsonStream;->endArray()Lcom/bugsnag/android/JsonWriter;

    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p1}, Lcom/bugsnag/android/JsonStream;->endArray()Lcom/bugsnag/android/JsonWriter;

    return-void
.end method
