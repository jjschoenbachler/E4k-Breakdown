.class public Lcom/adobe/air/FileChooserStub;
.super Ljava/lang/Object;
.source "FileChooserStub.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private fileChooser:Lcom/adobe/air/AIRExpandableFileChooser;

.field private m_condition:Ljava/util/concurrent/locks/Condition;

.field private m_filenames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_filterList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_lock:Ljava/util/concurrent/locks/Lock;

.field private m_userAction:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-class v0, Lcom/adobe/air/FileChooserStub;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/air/FileChooserStub;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 113
    iput-object v0, p0, Lcom/adobe/air/FileChooserStub;->m_filenames:Ljava/util/ArrayList;

    .line 114
    iput-object v0, p0, Lcom/adobe/air/FileChooserStub;->m_userAction:Ljava/lang/String;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/air/FileChooserStub;->m_filterList:Ljava/util/ArrayList;

    .line 31
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/adobe/air/FileChooserStub;->m_lock:Ljava/util/concurrent/locks/Lock;

    .line 32
    iget-object v0, p0, Lcom/adobe/air/FileChooserStub;->m_lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/FileChooserStub;->m_condition:Ljava/util/concurrent/locks/Condition;

    return-void
.end method

.method static synthetic access$000(Lcom/adobe/air/FileChooserStub;)Lcom/adobe/air/AIRExpandableFileChooser;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/adobe/air/FileChooserStub;->fileChooser:Lcom/adobe/air/AIRExpandableFileChooser;

    return-object p0
.end method

.method static synthetic access$002(Lcom/adobe/air/FileChooserStub;Lcom/adobe/air/AIRExpandableFileChooser;)Lcom/adobe/air/AIRExpandableFileChooser;
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/adobe/air/FileChooserStub;->fileChooser:Lcom/adobe/air/AIRExpandableFileChooser;

    return-object p1
.end method

.method static synthetic access$100(Lcom/adobe/air/FileChooserStub;)Ljava/util/ArrayList;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/adobe/air/FileChooserStub;->m_filterList:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public SetUserAction(Ljava/lang/String;)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/adobe/air/FileChooserStub;->m_lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 91
    iput-object p1, p0, Lcom/adobe/air/FileChooserStub;->m_userAction:Ljava/lang/String;

    .line 92
    iget-object p1, p0, Lcom/adobe/air/FileChooserStub;->m_condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 93
    iget-object p1, p0, Lcom/adobe/air/FileChooserStub;->m_lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public addFilter(Ljava/lang/String;)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/adobe/air/FileChooserStub;->m_filterList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getFilename(I)Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/adobe/air/FileChooserStub;->m_filenames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/FileChooserStub;->m_filenames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getNumFilenames()I
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/adobe/air/FileChooserStub;->m_filenames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public show(Ljava/lang/String;ZZ)V
    .locals 8

    .line 41
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 46
    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->WaitForNewActivity()Landroid/app/Activity;

    move-result-object v1

    .line 49
    :cond_0
    new-instance v0, Lcom/adobe/air/FileChooserStub$1;

    move-object v2, v0

    move-object v3, p0

    move v4, p2

    move v5, p3

    move-object v6, p1

    move-object v7, p0

    invoke-direct/range {v2 .. v7}, Lcom/adobe/air/FileChooserStub$1;-><init>(Lcom/adobe/air/FileChooserStub;ZZLjava/lang/String;Lcom/adobe/air/FileChooserStub;)V

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 60
    iget-object p1, p0, Lcom/adobe/air/FileChooserStub;->m_lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 63
    :try_start_0
    iget-object p1, p0, Lcom/adobe/air/FileChooserStub;->m_userAction:Ljava/lang/String;

    if-nez p1, :cond_1

    .line 64
    iget-object p1, p0, Lcom/adobe/air/FileChooserStub;->m_condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 69
    iget-object p2, p0, Lcom/adobe/air/FileChooserStub;->m_lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 70
    throw p1

    .line 69
    :catch_0
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/adobe/air/FileChooserStub;->m_lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 72
    iget-object p1, p0, Lcom/adobe/air/FileChooserStub;->fileChooser:Lcom/adobe/air/AIRExpandableFileChooser;

    invoke-virtual {p1}, Lcom/adobe/air/AIRExpandableFileChooser;->GetFileNames()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/adobe/air/FileChooserStub;->m_filenames:Ljava/util/ArrayList;

    .line 74
    iget-object p1, p0, Lcom/adobe/air/FileChooserStub;->m_filenames:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 75
    :goto_1
    iget-object p2, p0, Lcom/adobe/air/FileChooserStub;->m_filenames:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_2

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public userCancelled()Z
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/adobe/air/FileChooserStub;->m_userAction:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/air/FileChooserStub;->m_userAction:Ljava/lang/String;

    const-string v1, "cancel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
