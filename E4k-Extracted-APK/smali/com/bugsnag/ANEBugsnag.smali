.class public Lcom/bugsnag/ANEBugsnag;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adobe/fre/FREExtension;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createContext(Ljava/lang/String;)Lcom/adobe/fre/FREContext;
    .locals 0

    new-instance p1, Lcom/bugsnag/ANEBugsnagContext;

    invoke-direct {p1}, Lcom/bugsnag/ANEBugsnagContext;-><init>()V

    return-object p1
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public initialize()V
    .locals 0

    return-void
.end method
