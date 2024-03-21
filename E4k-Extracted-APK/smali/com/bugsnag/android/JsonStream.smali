.class final Lcom/bugsnag/android/JsonStream;
.super Lcom/bugsnag/android/JsonWriter;
.source "JsonStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bugsnag/android/JsonStream$Streamable;
    }
.end annotation


# instance fields
.field private out:Ljava/io/Writer;


# direct methods
.method constructor <init>(Ljava/io/Writer;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/bugsnag/android/JsonWriter;-><init>(Ljava/io/Writer;)V

    .line 17
    iput-object p1, p0, Lcom/bugsnag/android/JsonStream;->out:Ljava/io/Writer;

    return-void
.end method


# virtual methods
.method public final name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    invoke-super {p0, p1}, Lcom/bugsnag/android/JsonWriter;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    return-object p0
.end method

.method public final bridge synthetic name(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    invoke-super {p0, p1}, Lcom/bugsnag/android/JsonWriter;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    return-object p0
.end method

.method final value(Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    invoke-super {p0}, Lcom/bugsnag/android/JsonWriter;->flush()V

    const/4 v0, 0x0

    .line 47
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 48
    :try_start_1
    iget-object p1, p0, Lcom/bugsnag/android/JsonStream;->out:Ljava/io/Writer;

    invoke-static {v1, p1}, Lcom/bugsnag/android/AppData;->copy(Ljava/io/Reader;Ljava/io/Writer;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    invoke-static {v1}, Lcom/bugsnag/android/AppData;->closeQuietly(Ljava/io/Closeable;)V

    .line 53
    iget-object p1, p0, Lcom/bugsnag/android/JsonStream;->out:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    return-void

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 50
    :goto_0
    invoke-static {v0}, Lcom/bugsnag/android/AppData;->closeQuietly(Ljava/io/Closeable;)V

    throw p1
.end method

.method final value(Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/bugsnag/android/JsonStream;->nullValue()Lcom/bugsnag/android/JsonWriter;

    return-void

    .line 31
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-super {p0, p1}, Lcom/bugsnag/android/JsonWriter;->value(Z)Lcom/bugsnag/android/JsonWriter;

    return-void
.end method
