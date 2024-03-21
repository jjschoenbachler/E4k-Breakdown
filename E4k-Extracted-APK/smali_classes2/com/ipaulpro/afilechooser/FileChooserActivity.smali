.class public Lcom/ipaulpro/afilechooser/FileChooserActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "FileChooserActivity.java"

# interfaces
.implements Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;
.implements Lcom/ipaulpro/afilechooser/FileListFragment$Callbacks;


# static fields
.field public static final EXTERNAL_BASE_PATH:Ljava/lang/String;

.field private static final HAS_ACTIONBAR:Z

.field public static final PATH:Ljava/lang/String; = "path"


# instance fields
.field private mFragmentManager:Landroid/support/v4/app/FragmentManager;

.field private mPath:Ljava/lang/String;

.field private mStorageListener:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ipaulpro/afilechooser/FileChooserActivity;->EXTERNAL_BASE_PATH:Ljava/lang/String;

    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/ipaulpro/afilechooser/FileChooserActivity;->HAS_ACTIONBAR:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 55
    new-instance v0, Lcom/ipaulpro/afilechooser/FileChooserActivity$1;

    invoke-direct {v0, p0}, Lcom/ipaulpro/afilechooser/FileChooserActivity$1;-><init>(Lcom/ipaulpro/afilechooser/FileChooserActivity;)V

    iput-object v0, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity;->mStorageListener:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$0(Lcom/ipaulpro/afilechooser/FileChooserActivity;Ljava/io/File;)V
    .locals 0

    .line 191
    invoke-direct {p0, p1}, Lcom/ipaulpro/afilechooser/FileChooserActivity;->finishWithResult(Ljava/io/File;)V

    return-void
.end method

.method private addFragment()V
    .locals 3

    .line 166
    iget-object v0, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity;->mPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/ipaulpro/afilechooser/FileListFragment;->newInstance(Ljava/lang/String;)Lcom/ipaulpro/afilechooser/FileListFragment;

    move-result-object v0

    .line 167
    iget-object v1, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private finishWithResult(Ljava/io/File;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 195
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    const/4 v0, -0x1

    .line 196
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/ipaulpro/afilechooser/FileChooserActivity;->setResult(ILandroid/content/Intent;)V

    .line 197
    invoke-virtual {p0}, Lcom/ipaulpro/afilechooser/FileChooserActivity;->finish()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 201
    invoke-virtual {p0, p1}, Lcom/ipaulpro/afilechooser/FileChooserActivity;->setResult(I)V

    .line 202
    invoke-virtual {p0}, Lcom/ipaulpro/afilechooser/FileChooserActivity;->finish()V

    :goto_0
    return-void
.end method

.method private registerStorageListener()V
    .locals 2

    .line 237
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.MEDIA_REMOVED"

    .line 238
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 239
    iget-object v1, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity;->mStorageListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/ipaulpro/afilechooser/FileChooserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private replaceFragment(Ljava/io/File;)V
    .locals 2

    .line 179
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity;->mPath:Ljava/lang/String;

    .line 181
    iget-object p1, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity;->mPath:Ljava/lang/String;

    invoke-static {p1}, Lcom/ipaulpro/afilechooser/FileListFragment;->newInstance(Ljava/lang/String;)Lcom/ipaulpro/afilechooser/FileListFragment;

    move-result-object p1

    .line 182
    iget-object v0, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const/16 v0, 0x1001

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity;->mPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private unregisterStorageListener()V
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity;->mStorageListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/ipaulpro/afilechooser/FileChooserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public onBackStackChanged()V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 121
    iget-object v1, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryAt(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;

    move-result-object v0

    .line 122
    invoke-interface {v0}, Landroid/support/v4/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity;->mPath:Ljava/lang/String;

    goto :goto_0

    .line 126
    :cond_0
    sget-object v0, Lcom/ipaulpro/afilechooser/FileChooserActivity;->EXTERNAL_BASE_PATH:Ljava/lang/String;

    iput-object v0, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity;->mPath:Ljava/lang/String;

    .line 129
    :goto_0
    iget-object v0, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity;->mPath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ipaulpro/afilechooser/FileChooserActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 130
    sget-boolean v0, Lcom/ipaulpro/afilechooser/FileChooserActivity;->HAS_ACTIONBAR:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/ipaulpro/afilechooser/FileChooserActivity;->invalidateOptionsMenu()V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 72
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    .line 79
    sget-object p1, Lcom/ipaulpro/afilechooser/FileChooserActivity;->EXTERNAL_BASE_PATH:Ljava/lang/String;

    iput-object p1, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity;->mPath:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "path"

    .line 84
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity;->mPath:Ljava/lang/String;

    .line 87
    :goto_0
    iget-object p1, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity;->mPath:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ipaulpro/afilechooser/FileChooserActivity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 136
    sget-boolean p1, Lcom/ipaulpro/afilechooser/FileChooserActivity;->HAS_ACTIONBAR:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 138
    iget-object p1, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 140
    :goto_0
    invoke-virtual {p0}, Lcom/ipaulpro/afilechooser/FileChooserActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 141
    invoke-virtual {v1, p1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 142
    invoke-virtual {v1, p1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    :cond_1
    return v0
.end method

.method public onFileSelected(Ljava/io/File;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 217
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    invoke-direct {p0, p1}, Lcom/ipaulpro/afilechooser/FileChooserActivity;->replaceFragment(Ljava/io/File;)V

    goto :goto_0

    .line 223
    :cond_0
    invoke-direct {p0, p1}, Lcom/ipaulpro/afilechooser/FileChooserActivity;->finishWithResult(Ljava/io/File;)V

    goto :goto_0

    .line 228
    :cond_1
    sget p1, Lcom/ipaulpro/afilechooser/R$string;->error_selecting_file:I

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 151
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 158
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 154
    :cond_0
    iget-object p1, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    const/4 p1, 0x1

    return p1
.end method

.method protected onPause()V
    .locals 0

    .line 93
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 95
    invoke-direct {p0}, Lcom/ipaulpro/afilechooser/FileChooserActivity;->unregisterStorageListener()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 101
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 103
    invoke-direct {p0}, Lcom/ipaulpro/afilechooser/FileChooserActivity;->registerStorageListener()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 109
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "path"

    .line 111
    iget-object v1, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity;->mPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
