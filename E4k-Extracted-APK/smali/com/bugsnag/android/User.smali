.class final Lcom/bugsnag/android/User;
.super Ljava/lang/Object;
.source "User.java"

# interfaces
.implements Lcom/bugsnag/android/JsonStream$Streamable;


# instance fields
.field private email:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/bugsnag/android/User;)V
    .locals 2

    .line 22
    iget-object v0, p1, Lcom/bugsnag/android/User;->id:Ljava/lang/String;

    iget-object v1, p1, Lcom/bugsnag/android/User;->email:Ljava/lang/String;

    iget-object p1, p1, Lcom/bugsnag/android/User;->name:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Lcom/bugsnag/android/User;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/bugsnag/android/User;->id:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/bugsnag/android/User;->email:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/bugsnag/android/User;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final setEmail(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/bugsnag/android/User;->email:Ljava/lang/String;

    return-void
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/bugsnag/android/User;->id:Ljava/lang/String;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/bugsnag/android/User;->name:Ljava/lang/String;

    return-void
.end method

.method public final toStream(Lcom/bugsnag/android/JsonStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-virtual {p1}, Lcom/bugsnag/android/JsonStream;->beginObject()Lcom/bugsnag/android/JsonWriter;

    .line 28
    iget-object v0, p0, Lcom/bugsnag/android/User;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "id"

    .line 29
    invoke-virtual {p1, v0}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v0

    iget-object v1, p0, Lcom/bugsnag/android/User;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/JsonStream;->value(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/bugsnag/android/User;->email:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "email"

    .line 33
    invoke-virtual {p1, v0}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v0

    iget-object v1, p0, Lcom/bugsnag/android/User;->email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/JsonStream;->value(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/bugsnag/android/User;->name:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "name"

    .line 37
    invoke-virtual {p1, v0}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v0

    iget-object v1, p0, Lcom/bugsnag/android/User;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/JsonStream;->value(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    .line 40
    :cond_2
    invoke-virtual {p1}, Lcom/bugsnag/android/JsonStream;->endObject()Lcom/bugsnag/android/JsonWriter;

    return-void
.end method
