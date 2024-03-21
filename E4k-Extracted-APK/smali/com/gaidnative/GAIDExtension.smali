.class public Lcom/gaidnative/GAIDExtension;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adobe/fre/FREExtension;


# static fields
.field public static context:Lcom/adobe/fre/FREContext;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createContext(Ljava/lang/String;)Lcom/adobe/fre/FREContext;
    .locals 1

    const-string p1, "GAIDANE"

    const-string v0, "Creating context"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/gaidnative/GAIDExtensionContext;

    invoke-direct {p1}, Lcom/gaidnative/GAIDExtensionContext;-><init>()V

    sput-object p1, Lcom/gaidnative/GAIDExtension;->context:Lcom/adobe/fre/FREContext;

    return-object p1
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/gaidnative/GAIDExtension;->context:Lcom/adobe/fre/FREContext;

    return-void
.end method

.method public initialize()V
    .locals 0

    return-void
.end method
