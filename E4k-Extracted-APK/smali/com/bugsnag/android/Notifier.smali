.class final Lcom/bugsnag/android/Notifier;
.super Ljava/lang/Object;
.source "Notifier.java"

# interfaces
.implements Lcom/bugsnag/android/JsonStream$Streamable;


# static fields
.field private static instance:Lcom/bugsnag/android/Notifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lcom/bugsnag/android/Notifier;

    invoke-direct {v0}, Lcom/bugsnag/android/Notifier;-><init>()V

    sput-object v0, Lcom/bugsnag/android/Notifier;->instance:Lcom/bugsnag/android/Notifier;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/bugsnag/android/Notifier;
    .locals 1

    .line 15
    sget-object v0, Lcom/bugsnag/android/Notifier;->instance:Lcom/bugsnag/android/Notifier;

    return-object v0
.end method


# virtual methods
.method public final toStream(Lcom/bugsnag/android/JsonStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    invoke-virtual {p1}, Lcom/bugsnag/android/JsonStream;->beginObject()Lcom/bugsnag/android/JsonWriter;

    const-string v0, "name"

    .line 20
    invoke-virtual {p1, v0}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v0

    const-string v1, "Android Bugsnag Notifier"

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/JsonStream;->value(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    const-string v0, "version"

    .line 21
    invoke-virtual {p1, v0}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v0

    const-string v1, "3.2.6"

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/JsonStream;->value(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    const-string v0, "url"

    .line 22
    invoke-virtual {p1, v0}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v0

    const-string v1, "https://bugsnag.com"

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/JsonStream;->value(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    .line 23
    invoke-virtual {p1}, Lcom/bugsnag/android/JsonStream;->endObject()Lcom/bugsnag/android/JsonWriter;

    return-void
.end method
