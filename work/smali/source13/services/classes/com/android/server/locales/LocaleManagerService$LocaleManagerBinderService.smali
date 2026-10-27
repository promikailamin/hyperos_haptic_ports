.class final Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;
.super Landroid/app/ILocaleManager$Stub;
.source "LocaleManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locales/LocaleManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocaleManagerBinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/locales/LocaleManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/locales/LocaleManagerService;)V
    .registers 2

    .line 144
    iput-object p1, p0, Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;->this$0:Lcom/android/server/locales/LocaleManagerService;

    invoke-direct {p0}, Landroid/app/ILocaleManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/locales/LocaleManagerService;Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;-><init>(Lcom/android/server/locales/LocaleManagerService;)V

    return-void
.end method


# virtual methods
.method public getApplicationLocales(Ljava/lang/String;I)Landroid/os/LocaleList;
    .registers 4
    .param p1, "appPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;->this$0:Lcom/android/server/locales/LocaleManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/locales/LocaleManagerService;->getApplicationLocales(Ljava/lang/String;I)Landroid/os/LocaleList;

    move-result-object v0

    return-object v0
.end method

.method public getSystemLocales()Landroid/os/LocaleList;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;->this$0:Lcom/android/server/locales/LocaleManagerService;

    invoke-virtual {v0}, Lcom/android/server/locales/LocaleManagerService;->getSystemLocales()Landroid/os/LocaleList;

    move-result-object v0

    return-object v0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 168
    new-instance v0, Lcom/android/server/locales/LocaleManagerShellCommand;

    iget-object v1, p0, Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;->this$0:Lcom/android/server/locales/LocaleManagerService;

    invoke-static {v1}, Lcom/android/server/locales/LocaleManagerService;->-$$Nest$fgetmBinderService(Lcom/android/server/locales/LocaleManagerService;)Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/locales/LocaleManagerShellCommand;-><init>(Landroid/app/ILocaleManager;)V

    .line 169
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/locales/LocaleManagerShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 170
    return-void
.end method

.method public setApplicationLocales(Ljava/lang/String;ILandroid/os/LocaleList;)V
    .registers 5
    .param p1, "appPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "locales"    # Landroid/os/LocaleList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;->this$0:Lcom/android/server/locales/LocaleManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/locales/LocaleManagerService;->setApplicationLocales(Ljava/lang/String;ILandroid/os/LocaleList;)V

    .line 149
    return-void
.end method
