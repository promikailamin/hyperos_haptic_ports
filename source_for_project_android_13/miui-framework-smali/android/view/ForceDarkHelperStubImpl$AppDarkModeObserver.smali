.class Landroid/view/ForceDarkHelperStubImpl$AppDarkModeObserver;
.super Landroid/app/IAppDarkModeObserver$Stub;
.source "ForceDarkHelperStubImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ForceDarkHelperStubImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppDarkModeObserver"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/ForceDarkHelperStubImpl;


# direct methods
.method private constructor blacklist <init>(Landroid/view/ForceDarkHelperStubImpl;)V
    .registers 2

    .line 820
    iput-object p1, p0, Landroid/view/ForceDarkHelperStubImpl$AppDarkModeObserver;->this$0:Landroid/view/ForceDarkHelperStubImpl;

    invoke-direct {p0}, Landroid/app/IAppDarkModeObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/ForceDarkHelperStubImpl;Landroid/view/ForceDarkHelperStubImpl$AppDarkModeObserver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/ForceDarkHelperStubImpl$AppDarkModeObserver;-><init>(Landroid/view/ForceDarkHelperStubImpl;)V

    return-void
.end method


# virtual methods
.method public blacklist onAppDarkModeChanged(Z)V
    .registers 5
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 823
    invoke-static {}, Landroid/view/ForceDarkHelperStubImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/view/ForceDarkHelperStubImpl$AppDarkModeObserver;->this$0:Landroid/view/ForceDarkHelperStubImpl;

    invoke-static {v2}, Landroid/view/ForceDarkHelperStubImpl;->-$$Nest$fgetmContext(Landroid/view/ForceDarkHelperStubImpl;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/ForceDarkHelperStubImpl$AppDarkModeObserver;->this$0:Landroid/view/ForceDarkHelperStubImpl;

    invoke-static {v2}, Landroid/view/ForceDarkHelperStubImpl;->-$$Nest$fgetmContext(Landroid/view/ForceDarkHelperStubImpl;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onAppDarkModeChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    iget-object v0, p0, Landroid/view/ForceDarkHelperStubImpl$AppDarkModeObserver;->this$0:Landroid/view/ForceDarkHelperStubImpl;

    invoke-static {v0, p1}, Landroid/view/ForceDarkHelperStubImpl;->-$$Nest$fputmIsAppDarkModeEnable(Landroid/view/ForceDarkHelperStubImpl;Z)V

    .line 826
    iget-object v0, p0, Landroid/view/ForceDarkHelperStubImpl$AppDarkModeObserver;->this$0:Landroid/view/ForceDarkHelperStubImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/view/ForceDarkHelperStubImpl;->-$$Nest$mrefreshForceDarkMode(Landroid/view/ForceDarkHelperStubImpl;Z)V

    .line 827
    return-void
.end method

.method public blacklist onAppSplashScreenChanged(Ljava/util/Map;)V
    .registers 4
    .param p1, "appSplashScreenMap"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 832
    iget-object v0, p0, Landroid/view/ForceDarkHelperStubImpl$AppDarkModeObserver;->this$0:Landroid/view/ForceDarkHelperStubImpl;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0, v1}, Landroid/view/ForceDarkHelperStubImpl;->-$$Nest$fputmSplashScreenMap(Landroid/view/ForceDarkHelperStubImpl;Ljava/util/HashMap;)V

    .line 833
    return-void
.end method

.method public blacklist onDump(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 837
    iget-object v0, p0, Landroid/view/ForceDarkHelperStubImpl$AppDarkModeObserver;->this$0:Landroid/view/ForceDarkHelperStubImpl;

    invoke-static {v0}, Landroid/view/ForceDarkHelperStubImpl;->-$$Nest$fgetmDecorActivityName(Landroid/view/ForceDarkHelperStubImpl;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "  mDecorActivityName"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    iget-object v0, p0, Landroid/view/ForceDarkHelperStubImpl$AppDarkModeObserver;->this$0:Landroid/view/ForceDarkHelperStubImpl;

    invoke-static {v0}, Landroid/view/ForceDarkHelperStubImpl;->-$$Nest$fgetmForceDarkOrigin(Landroid/view/ForceDarkHelperStubImpl;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "  mForceDarkOrigin"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    iget-object v0, p0, Landroid/view/ForceDarkHelperStubImpl$AppDarkModeObserver;->this$0:Landroid/view/ForceDarkHelperStubImpl;

    invoke-static {v0}, Landroid/view/ForceDarkHelperStubImpl;->-$$Nest$fgetmForceDarkDebug(Landroid/view/ForceDarkHelperStubImpl;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "  mForceDarkDebug"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    iget-object v0, p0, Landroid/view/ForceDarkHelperStubImpl$AppDarkModeObserver;->this$0:Landroid/view/ForceDarkHelperStubImpl;

    invoke-static {v0}, Landroid/view/ForceDarkHelperStubImpl;->-$$Nest$fgetmIsDarkModeEnabled(Landroid/view/ForceDarkHelperStubImpl;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "  mIsDarkModeEnabled"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    iget-object v0, p0, Landroid/view/ForceDarkHelperStubImpl$AppDarkModeObserver;->this$0:Landroid/view/ForceDarkHelperStubImpl;

    invoke-static {v0}, Landroid/view/ForceDarkHelperStubImpl;->-$$Nest$fgetmIsDarkModeSupported(Landroid/view/ForceDarkHelperStubImpl;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "  mIsDarkModeSupported"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    iget-object v0, p0, Landroid/view/ForceDarkHelperStubImpl$AppDarkModeObserver;->this$0:Landroid/view/ForceDarkHelperStubImpl;

    invoke-static {v0}, Landroid/view/ForceDarkHelperStubImpl;->-$$Nest$fgetmIsAppDarkModeEnable(Landroid/view/ForceDarkHelperStubImpl;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "  mIsAppDarkModeEnable"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    iget-object v0, p0, Landroid/view/ForceDarkHelperStubImpl$AppDarkModeObserver;->this$0:Landroid/view/ForceDarkHelperStubImpl;

    invoke-static {v0}, Landroid/view/ForceDarkHelperStubImpl;->-$$Nest$fgetmIsBlackAppDarkMode(Landroid/view/ForceDarkHelperStubImpl;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "  mIsBlackAppDarkMode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    iget-object v0, p0, Landroid/view/ForceDarkHelperStubImpl$AppDarkModeObserver;->this$0:Landroid/view/ForceDarkHelperStubImpl;

    invoke-static {v0}, Landroid/view/ForceDarkHelperStubImpl;->-$$Nest$fgetmIsWhiteAppDarkMode(Landroid/view/ForceDarkHelperStubImpl;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "  mIsWhiteAppDarkMode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    iget-object v0, p0, Landroid/view/ForceDarkHelperStubImpl$AppDarkModeObserver;->this$0:Landroid/view/ForceDarkHelperStubImpl;

    invoke-static {v0}, Landroid/view/ForceDarkHelperStubImpl;->-$$Nest$fgetmIsInputMethod(Landroid/view/ForceDarkHelperStubImpl;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "  mIsInputMethod"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    iget-object v0, p0, Landroid/view/ForceDarkHelperStubImpl$AppDarkModeObserver;->this$0:Landroid/view/ForceDarkHelperStubImpl;

    invoke-static {v0}, Landroid/view/ForceDarkHelperStubImpl;->-$$Nest$fgetmForceDarkDebug(Landroid/view/ForceDarkHelperStubImpl;)I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_9c

    .line 847
    iget-object v0, p0, Landroid/view/ForceDarkHelperStubImpl$AppDarkModeObserver;->this$0:Landroid/view/ForceDarkHelperStubImpl;

    invoke-static {v0}, Landroid/view/ForceDarkHelperStubImpl;->-$$Nest$fgetmForceDarkAppConfig(Landroid/view/ForceDarkHelperStubImpl;)Landroid/config/ForceDarkAppConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/config/ForceDarkAppConfig;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "  mForceDarkAppConfig"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    :cond_9c
    return-void
.end method
