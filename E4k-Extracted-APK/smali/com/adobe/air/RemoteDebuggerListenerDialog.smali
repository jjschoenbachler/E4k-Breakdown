.class public Lcom/adobe/air/RemoteDebuggerListenerDialog;
.super Landroid/app/Activity;
.source "RemoteDebuggerListenerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/air/RemoteDebuggerListenerDialog$DialogState;
    }
.end annotation


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private count:I

.field private debuggerPort:I

.field private mActivity:Landroid/app/Activity;

.field private mCheckAgain:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mWaitDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, -0x1

    .line 234
    iput v0, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog;->debuggerPort:I

    const/4 v0, 0x0

    .line 235
    iput v0, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog;->count:I

    .line 236
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 237
    iput-object v0, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog;->mWaitDialog:Landroid/app/AlertDialog;

    .line 238
    iput-object v0, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog;->mCheckAgain:Ljava/lang/Runnable;

    .line 239
    iput-object v0, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog;->mActivity:Landroid/app/Activity;

    .line 240
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/adobe/air/RemoteDebuggerListenerDialog;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog;->debuggerPort:I

    return p0
.end method

.method static synthetic access$100(Lcom/adobe/air/RemoteDebuggerListenerDialog;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/adobe/air/RemoteDebuggerListenerDialog;->dismissDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/adobe/air/RemoteDebuggerListenerDialog;)Ljava/lang/Runnable;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog;->mCheckAgain:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$300(Lcom/adobe/air/RemoteDebuggerListenerDialog;)Landroid/os/Handler;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/adobe/air/RemoteDebuggerListenerDialog;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/adobe/air/RemoteDebuggerListenerDialog;->closeListeningDebuggerSocket()V

    return-void
.end method

.method static synthetic access$500(Lcom/adobe/air/RemoteDebuggerListenerDialog;)Landroid/content/BroadcastReceiver;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method static synthetic access$502(Lcom/adobe/air/RemoteDebuggerListenerDialog;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method static synthetic access$600(Lcom/adobe/air/RemoteDebuggerListenerDialog;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog;->count:I

    return p0
.end method

.method static synthetic access$608(Lcom/adobe/air/RemoteDebuggerListenerDialog;)I
    .locals 2

    .line 47
    iget v0, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog;->count:I

    return v0
.end method

.method static synthetic access$700(Lcom/adobe/air/RemoteDebuggerListenerDialog;)Landroid/app/AlertDialog;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog;->mWaitDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$702(Lcom/adobe/air/RemoteDebuggerListenerDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog;->mWaitDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$800(Lcom/adobe/air/RemoteDebuggerListenerDialog;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog;
    .locals 0

    .line 47
    invoke-direct/range {p0 .. p5}, Lcom/adobe/air/RemoteDebuggerListenerDialog;->createDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method private closeListeningDebuggerSocket()V
    .locals 4

    .line 185
    new-instance v0, Lcom/adobe/air/RemoteDebuggerListenerDialog$5;

    invoke-direct {v0, p0}, Lcom/adobe/air/RemoteDebuggerListenerDialog$5;-><init>(Lcom/adobe/air/RemoteDebuggerListenerDialog;)V

    const/4 v1, 0x1

    .line 197
    new-array v1, v1, [Ljava/lang/Integer;

    iget v2, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog;->debuggerPort:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private createDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog;
    .locals 2

    .line 174
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 175
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 176
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 p1, -0x1

    .line 177
    invoke-virtual {v0, p1, p3, p4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 178
    invoke-virtual {v0, p5}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    const/4 p1, 0x1

    .line 179
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    return-object v0
.end method

.method private dismissDialog()V
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog;->mWaitDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog;->mWaitDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/adobe/air/RemoteDebuggerListenerDialog;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    const/4 v0, 0x0

    .line 208
    iput-object v0, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 210
    iget-object v0, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog;->mCheckAgain:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 211
    iget-object v0, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 57
    sget v0, Lcom/adobe/air/R$string;->IDA_APP_WAITING_DEBUGGER_WARNING:I

    invoke-virtual {p0, v0}, Lcom/adobe/air/RemoteDebuggerListenerDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 58
    sget v1, Lcom/adobe/air/R$string;->IDA_APP_DEBUGGER_TIMEOUT_INFO:I

    invoke-virtual {p0, v1}, Lcom/adobe/air/RemoteDebuggerListenerDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 60
    iput-object p0, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog;->mActivity:Landroid/app/Activity;

    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcom/adobe/air/RemoteDebuggerListenerDialog;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v2, "debuggerPort"

    .line 67
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/16 p1, 0x1f00

    :goto_0
    iput p1, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog;->debuggerPort:I

    .line 69
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog;->mWaitDialog:Landroid/app/AlertDialog;

    const/4 p1, 0x1

    .line 70
    new-array p1, p1, [Ljava/lang/Object;

    const/16 v2, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, p1, v3

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 71
    new-instance p1, Lcom/adobe/air/RemoteDebuggerListenerDialog$1;

    invoke-direct {p1, p0}, Lcom/adobe/air/RemoteDebuggerListenerDialog$1;-><init>(Lcom/adobe/air/RemoteDebuggerListenerDialog;)V

    iput-object p1, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 87
    new-instance p1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {p1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "RemoteDebuggerListenerDialogClose"

    .line 88
    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 89
    iget-object v2, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, p1}, Lcom/adobe/air/RemoteDebuggerListenerDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 91
    sget p1, Lcom/adobe/air/R$string;->IDA_APP_WAITING_DEBUGGER_TITLE:I

    invoke-virtual {p0, p1}, Lcom/adobe/air/RemoteDebuggerListenerDialog;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget p1, Lcom/adobe/air/R$string;->button_cancel:I

    .line 93
    invoke-virtual {p0, p1}, Lcom/adobe/air/RemoteDebuggerListenerDialog;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/adobe/air/RemoteDebuggerListenerDialog$2;

    invoke-direct {v8, p0}, Lcom/adobe/air/RemoteDebuggerListenerDialog$2;-><init>(Lcom/adobe/air/RemoteDebuggerListenerDialog;)V

    new-instance v9, Lcom/adobe/air/RemoteDebuggerListenerDialog$3;

    invoke-direct {v9, p0}, Lcom/adobe/air/RemoteDebuggerListenerDialog$3;-><init>(Lcom/adobe/air/RemoteDebuggerListenerDialog;)V

    move-object v4, p0

    .line 91
    invoke-direct/range {v4 .. v9}, Lcom/adobe/air/RemoteDebuggerListenerDialog;->createDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog;->mWaitDialog:Landroid/app/AlertDialog;

    .line 119
    iput v3, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog;->count:I

    .line 121
    new-instance p1, Lcom/adobe/air/RemoteDebuggerListenerDialog$4;

    invoke-direct {p1, p0, v0, v1}, Lcom/adobe/air/RemoteDebuggerListenerDialog$4;-><init>(Lcom/adobe/air/RemoteDebuggerListenerDialog;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog;->mCheckAgain:Ljava/lang/Runnable;

    .line 168
    iget-object p1, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog;->mCheckAgain:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 169
    iget-object p1, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog;->mWaitDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 219
    invoke-direct {p0}, Lcom/adobe/air/RemoteDebuggerListenerDialog;->closeListeningDebuggerSocket()V

    .line 220
    invoke-direct {p0}, Lcom/adobe/air/RemoteDebuggerListenerDialog;->dismissDialog()V

    .line 223
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onStop()V
    .locals 0

    .line 229
    invoke-direct {p0}, Lcom/adobe/air/RemoteDebuggerListenerDialog;->closeListeningDebuggerSocket()V

    .line 230
    invoke-direct {p0}, Lcom/adobe/air/RemoteDebuggerListenerDialog;->dismissDialog()V

    .line 231
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
