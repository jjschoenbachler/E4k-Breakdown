.class final Lcom/bugsnag/android/HttpClient$NetworkException;
.super Ljava/io/IOException;
.source "HttpClient.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3

    const-string v0, "Network error when posting to %s"

    const/4 v1, 0x1

    .line 19
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0, p2}, Lcom/bugsnag/android/HttpClient$NetworkException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method
