.class final Lcom/bugsnag/android/ErrorStore$1;
.super Ljava/lang/Object;
.source "ErrorStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bugsnag/android/ErrorStore;->flush()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/bugsnag/android/ErrorStore;


# direct methods
.method constructor <init>(Lcom/bugsnag/android/ErrorStore;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/bugsnag/android/ErrorStore$1;->this$0:Lcom/bugsnag/android/ErrorStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 47
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/bugsnag/android/ErrorStore$1;->this$0:Lcom/bugsnag/android/ErrorStore;

    invoke-static {v1}, Lcom/bugsnag/android/ErrorStore;->access$000(Lcom/bugsnag/android/ErrorStore;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 50
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 51
    array-length v1, v0

    if-lez v1, :cond_1

    const-string v1, "Sending %d saved error(s) to Bugsnag"

    const/4 v2, 0x1

    .line 52
    new-array v2, v2, [Ljava/lang/Object;

    array-length v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bugsnag/android/AppData;->info(Ljava/lang/String;)V

    .line 54
    array-length v1, v0

    :goto_0
    if-ge v4, v1, :cond_1

    aget-object v2, v0, v4

    .line 56
    :try_start_0
    new-instance v3, Lcom/bugsnag/android/Notification;

    iget-object v5, p0, Lcom/bugsnag/android/ErrorStore$1;->this$0:Lcom/bugsnag/android/ErrorStore;

    invoke-static {v5}, Lcom/bugsnag/android/ErrorStore;->access$100(Lcom/bugsnag/android/ErrorStore;)Lcom/bugsnag/android/Configuration;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/bugsnag/android/Notification;-><init>(Lcom/bugsnag/android/Configuration;)V

    .line 57
    invoke-virtual {v3, v2}, Lcom/bugsnag/android/Notification;->addError(Ljava/io/File;)V

    .line 58
    invoke-virtual {v3}, Lcom/bugsnag/android/Notification;->deliver()I

    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Deleting sent error file "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bugsnag/android/AppData;->info(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Lcom/bugsnag/android/HttpClient$NetworkException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    const-string v5, "Problem sending unsent error from disk"

    .line 65
    invoke-static {v5, v3}, Lcom/bugsnag/android/AppData;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v3, "Could not send previously saved error(s) to Bugsnag, will try again later"

    .line 63
    invoke-static {v3, v2}, Lcom/bugsnag/android/AppData;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_2
    return-void
.end method
