.class final Lcom/bugsnag/android/HttpClient$BadResponseException;
.super Ljava/lang/Exception;
.source "HttpClient.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3

    const-string v0, "Got non-200 response code (%d) from %s"

    const/4 v1, 0x2

    .line 13
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p1, v1, p2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method
