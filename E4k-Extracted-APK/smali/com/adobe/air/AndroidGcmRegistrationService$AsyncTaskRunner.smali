.class Lcom/adobe/air/AndroidGcmRegistrationService$AsyncTaskRunner;
.super Landroid/os/AsyncTask;
.source "AndroidGcmRegistrationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/air/AndroidGcmRegistrationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncTaskRunner"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/AndroidGcmRegistrationService;


# direct methods
.method private constructor <init>(Lcom/adobe/air/AndroidGcmRegistrationService;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/adobe/air/AndroidGcmRegistrationService$AsyncTaskRunner;->this$0:Lcom/adobe/air/AndroidGcmRegistrationService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adobe/air/AndroidGcmRegistrationService;Lcom/adobe/air/AndroidGcmRegistrationService$1;)V
    .locals 0

    .line 182
    invoke-direct {p0, p1}, Lcom/adobe/air/AndroidGcmRegistrationService$AsyncTaskRunner;-><init>(Lcom/adobe/air/AndroidGcmRegistrationService;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 182
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/adobe/air/AndroidGcmRegistrationService$AsyncTaskRunner;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;
    .locals 5

    const v0, 0x493e0

    const/4 v1, 0x0

    .line 190
    :try_start_0
    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v2, p1

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 193
    iget-object p1, p0, Lcom/adobe/air/AndroidGcmRegistrationService$AsyncTaskRunner;->this$0:Lcom/adobe/air/AndroidGcmRegistrationService;

    iget-object v2, p0, Lcom/adobe/air/AndroidGcmRegistrationService$AsyncTaskRunner;->this$0:Lcom/adobe/air/AndroidGcmRegistrationService;

    invoke-static {v2}, Lcom/adobe/air/AndroidGcmRegistrationService;->access$300(Lcom/adobe/air/AndroidGcmRegistrationService;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {}, Lcom/adobe/air/AndroidGcmRegistrationService;->access$200()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->register([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/adobe/air/AndroidGcmRegistrationService;->access$102(Lcom/adobe/air/AndroidGcmRegistrationService;Ljava/lang/String;)Ljava/lang/String;

    .line 194
    iget-object p1, p0, Lcom/adobe/air/AndroidGcmRegistrationService$AsyncTaskRunner;->this$0:Lcom/adobe/air/AndroidGcmRegistrationService;

    invoke-static {p1}, Lcom/adobe/air/AndroidGcmRegistrationService;->access$100(Lcom/adobe/air/AndroidGcmRegistrationService;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 196
    iget-object p1, p0, Lcom/adobe/air/AndroidGcmRegistrationService$AsyncTaskRunner;->this$0:Lcom/adobe/air/AndroidGcmRegistrationService;

    invoke-static {p1, v0}, Lcom/adobe/air/AndroidGcmRegistrationService;->access$400(Lcom/adobe/air/AndroidGcmRegistrationService;I)V

    goto :goto_0

    .line 200
    :cond_0
    iget-object p1, p0, Lcom/adobe/air/AndroidGcmRegistrationService$AsyncTaskRunner;->this$0:Lcom/adobe/air/AndroidGcmRegistrationService;

    invoke-static {p1}, Lcom/adobe/air/AndroidGcmRegistrationService;->access$500(Lcom/adobe/air/AndroidGcmRegistrationService;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 207
    :catch_0
    iget-object p1, p0, Lcom/adobe/air/AndroidGcmRegistrationService$AsyncTaskRunner;->this$0:Lcom/adobe/air/AndroidGcmRegistrationService;

    invoke-static {p1, v0}, Lcom/adobe/air/AndroidGcmRegistrationService;->access$400(Lcom/adobe/air/AndroidGcmRegistrationService;I)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
