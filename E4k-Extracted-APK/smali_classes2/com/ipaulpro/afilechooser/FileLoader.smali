.class public Lcom/ipaulpro/afilechooser/FileLoader;
.super Landroid/support/v4/content/AsyncTaskLoader;
.source "FileLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/AsyncTaskLoader<",
        "Ljava/util/List<",
        "Ljava/io/File;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final FILE_OBSERVER_MASK:I = 0xfc2


# instance fields
.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mFileObserver:Landroid/os/FileObserver;

.field private mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 50
    iput-object p2, p0, Lcom/ipaulpro/afilechooser/FileLoader;->mPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/ipaulpro/afilechooser/FileLoader;->deliverResult(Ljava/util/List;)V

    return-void
.end method

.method public deliverResult(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 86
    invoke-virtual {p0}, Lcom/ipaulpro/afilechooser/FileLoader;->isReset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0, p1}, Lcom/ipaulpro/afilechooser/FileLoader;->onReleaseResources(Ljava/util/List;)V

    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/ipaulpro/afilechooser/FileLoader;->mData:Ljava/util/List;

    .line 92
    iput-object p1, p0, Lcom/ipaulpro/afilechooser/FileLoader;->mData:Ljava/util/List;

    .line 94
    invoke-virtual {p0}, Lcom/ipaulpro/afilechooser/FileLoader;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    invoke-super {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    :cond_1
    if-eqz v0, :cond_2

    if-eq v0, p1, :cond_2

    .line 98
    invoke-virtual {p0, v0}, Lcom/ipaulpro/afilechooser/FileLoader;->onReleaseResources(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ipaulpro/afilechooser/FileLoader;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/ipaulpro/afilechooser/FileLoader;->mPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    sget-object v2, Lcom/ipaulpro/afilechooser/utils/FileUtils;->sDirFilter:Ljava/io/FileFilter;

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 65
    sget-object v4, Lcom/ipaulpro/afilechooser/utils/FileUtils;->sComparator:Ljava/util/Comparator;

    invoke-static {v2, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 67
    array-length v4, v2

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v4, :cond_0

    goto :goto_1

    :cond_0
    aget-object v6, v2, v5

    .line 68
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 72
    :cond_1
    :goto_1
    sget-object v2, Lcom/ipaulpro/afilechooser/utils/FileUtils;->sFileFilter:Ljava/io/FileFilter;

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 75
    sget-object v2, Lcom/ipaulpro/afilechooser/utils/FileUtils;->sComparator:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 77
    array-length v2, v1

    :goto_2
    if-lt v3, v2, :cond_2

    goto :goto_3

    :cond_2
    aget-object v4, v1, v3

    .line 78
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    return-object v0
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/ipaulpro/afilechooser/FileLoader;->onCanceled(Ljava/util/List;)V

    return-void
.end method

.method public onCanceled(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 137
    invoke-super {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    .line 139
    invoke-virtual {p0, p1}, Lcom/ipaulpro/afilechooser/FileLoader;->onReleaseResources(Ljava/util/List;)V

    return-void
.end method

.method protected onReleaseResources(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 144
    iget-object p1, p0, Lcom/ipaulpro/afilechooser/FileLoader;->mFileObserver:Landroid/os/FileObserver;

    if-eqz p1, :cond_0

    .line 145
    iget-object p1, p0, Lcom/ipaulpro/afilechooser/FileLoader;->mFileObserver:Landroid/os/FileObserver;

    invoke-virtual {p1}, Landroid/os/FileObserver;->stopWatching()V

    const/4 p1, 0x0

    .line 146
    iput-object p1, p0, Lcom/ipaulpro/afilechooser/FileLoader;->mFileObserver:Landroid/os/FileObserver;

    :cond_0
    return-void
.end method

.method protected onReset()V
    .locals 1

    .line 127
    invoke-virtual {p0}, Lcom/ipaulpro/afilechooser/FileLoader;->onStopLoading()V

    .line 129
    iget-object v0, p0, Lcom/ipaulpro/afilechooser/FileLoader;->mData:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/ipaulpro/afilechooser/FileLoader;->mData:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/ipaulpro/afilechooser/FileLoader;->onReleaseResources(Ljava/util/List;)V

    const/4 v0, 0x0

    .line 131
    iput-object v0, p0, Lcom/ipaulpro/afilechooser/FileLoader;->mData:Ljava/util/List;

    :cond_0
    return-void
.end method

.method protected onStartLoading()V
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/ipaulpro/afilechooser/FileLoader;->mData:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/ipaulpro/afilechooser/FileLoader;->mData:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/ipaulpro/afilechooser/FileLoader;->deliverResult(Ljava/util/List;)V

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/ipaulpro/afilechooser/FileLoader;->mFileObserver:Landroid/os/FileObserver;

    if-nez v0, :cond_1

    .line 107
    new-instance v0, Lcom/ipaulpro/afilechooser/FileLoader$1;

    iget-object v1, p0, Lcom/ipaulpro/afilechooser/FileLoader;->mPath:Ljava/lang/String;

    const/16 v2, 0xfc2

    invoke-direct {v0, p0, v1, v2}, Lcom/ipaulpro/afilechooser/FileLoader$1;-><init>(Lcom/ipaulpro/afilechooser/FileLoader;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/ipaulpro/afilechooser/FileLoader;->mFileObserver:Landroid/os/FileObserver;

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/ipaulpro/afilechooser/FileLoader;->mFileObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    .line 116
    invoke-virtual {p0}, Lcom/ipaulpro/afilechooser/FileLoader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ipaulpro/afilechooser/FileLoader;->mData:Ljava/util/List;

    if-nez v0, :cond_3

    .line 117
    :cond_2
    invoke-virtual {p0}, Lcom/ipaulpro/afilechooser/FileLoader;->forceLoad()V

    :cond_3
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .line 122
    invoke-virtual {p0}, Lcom/ipaulpro/afilechooser/FileLoader;->cancelLoad()Z

    return-void
.end method
