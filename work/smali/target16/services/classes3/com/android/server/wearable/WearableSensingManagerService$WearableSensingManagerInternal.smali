.class public final Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;
.super Landroid/app/wearable/IWearableSensingManager$Stub;
.source "WearableSensingManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wearable/WearableSensingManagerService;


# direct methods
.method public static synthetic $r8$lambda$0H_E_qDjsxPZmOYFc9dvk030MYo(Landroid/content/ComponentName;Landroid/os/RemoteCallback;Lcom/android/server/wearable/WearableSensingManagerPerUserService;)V
    .registers 3

    .line 650
    invoke-virtual {p2, p0, p1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->onStartHotwordRecognition(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EF-uIxqtuFTJSRw2XlHTCL6VxJk(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;Lcom/android/server/wearable/WearableSensingManagerPerUserService;)V
    .registers 4

    .line 522
    invoke-virtual {p3, p0, p1, p2}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->onProvideDataStream(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FQPsiOmODaJwpoXqJrGspTXXVu0(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/RemoteCallback;Lcom/android/server/wearable/WearableSensingManagerPerUserService;)V
    .registers 4

    .line 542
    invoke-virtual {p3, p0, p1, p2}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->onProvidedData(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GD3SVVAzUzk7NYaRmvAnKLDJBjw(IILjava/lang/String;Landroid/os/RemoteCallback;Lcom/android/server/wearable/WearableSensingManagerPerUserService;)V
    .registers 5

    .line 627
    invoke-virtual {p4, p0, p1, p2, p3}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->onUnregisterDataRequestObserver(IILjava/lang/String;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$StwI29O9xcoE36JIbnvRNo1wfXU(Landroid/os/RemoteCallback;Lcom/android/server/wearable/WearableSensingManagerPerUserService;)V
    .registers 2

    .line 668
    invoke-virtual {p1, p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->onStopHotwordRecognition(Landroid/os/RemoteCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eb20XFBZxiozdMfF0WntWX1dEzo(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;Lcom/android/server/wearable/WearableSensingManagerPerUserService;)V
    .registers 4

    .line 442
    invoke-virtual {p3, p0, p1, p2}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->onProvideConnection(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pJOeoRaVcsR_Urr4ycisbCEvlT4(ILandroid/os/RemoteCallback;ILandroid/app/PendingIntent;Landroid/os/RemoteCallback;Lcom/android/server/wearable/WearableSensingManagerPerUserService;)V
    .registers 7

    .line 589
    invoke-virtual {p3}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object p3

    move-object v0, p1

    move p1, p0

    move-object p0, p5

    move-object p5, p4

    move-object p4, p3

    move p3, p2

    move-object p2, v0

    .line 585
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->onRegisterDataRequestObserver(ILandroid/os/RemoteCallback;ILjava/lang/String;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wearable/WearableSensingManagerService;)V
    .registers 2

    .line 412
    iput-object p1, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    invoke-direct {p0}, Landroid/app/wearable/IWearableSensingManager$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wearable/WearableSensingManagerService;Lcom/android/server/wearable/WearableSensingManagerService-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;-><init>(Lcom/android/server/wearable/WearableSensingManagerService;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    .line 0
    return-void
.end method

.method public getAvailableConnectionCount()I
    .registers 2

    const/4 v0, 0x0

    .line 417
    invoke-virtual {p0, v0}, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->validateAndGetPerUserService(Landroid/os/RemoteCallback;)Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    move-result-object p0

    if-nez p0, :cond_9

    const/4 p0, 0x0

    return p0

    .line 421
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->getAvailableConnectionCount()I

    move-result p0

    return p0
.end method

.method public handleShellCommand(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)I
    .registers 11

    .line 677
    new-instance v0, Lcom/android/server/wearable/WearableSensingShellCommand;

    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/wearable/WearableSensingShellCommand;-><init>(Lcom/android/server/wearable/WearableSensingManagerService;)V

    .line 680
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 681
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    .line 682
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    move-object v1, p0

    move-object v5, p4

    .line 678
    invoke-virtual/range {v0 .. v5}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public provideConcurrentConnection(Landroid/os/ParcelFileDescriptor;Landroid/os/PersistableBundle;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)I
    .registers 7

    .line 453
    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WearableSensingManagerInternal provideConcurrentConnection."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    invoke-virtual {p0, p4}, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->validateAndGetPerUserService(Landroid/os/RemoteCallback;)Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    move-result-object p0

    if-nez p0, :cond_1d

    const/4 p0, -0x1

    return p0

    .line 463
    :cond_1d
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->onProvideConcurrentConnection(Landroid/os/ParcelFileDescriptor;Landroid/os/PersistableBundle;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)I

    move-result p0

    return p0
.end method

.method public provideConnection(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)V
    .registers 7

    .line 429
    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WearableSensingManagerInternal provideConnection."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    invoke-static {v0}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$fgetmContext(Lcom/android/server/wearable/WearableSensingManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_WEARABLE_SENSING_SERVICE"

    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    iget-boolean v0, v0, Lcom/android/server/wearable/WearableSensingManagerService;->mIsServiceEnabled:Z

    if-nez v0, :cond_32

    .line 435
    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Service not available."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    .line 436
    invoke-static {p3, p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V

    return-void

    .line 440
    :cond_32
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    new-instance v0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda1;-><init>(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)V

    invoke-static {p0, v0, p3}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$mcallPerUserServiceIfExist(Lcom/android/server/wearable/WearableSensingManagerService;Ljava/util/function/Consumer;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method public provideData(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/RemoteCallback;)V
    .registers 7

    .line 530
    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WearableSensingManagerInternal provideData."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    invoke-static {v0}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$fgetmContext(Lcom/android/server/wearable/WearableSensingManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_WEARABLE_SENSING_SERVICE"

    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    iget-boolean v0, v0, Lcom/android/server/wearable/WearableSensingManagerService;->mIsServiceEnabled:Z

    if-nez v0, :cond_32

    .line 536
    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Service not available."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    .line 537
    invoke-static {p3, p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V

    return-void

    .line 541
    :cond_32
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    new-instance v0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda5;-><init>(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/RemoteCallback;)V

    invoke-static {p0, v0, p3}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$mcallPerUserServiceIfExist(Lcom/android/server/wearable/WearableSensingManagerService;Ljava/util/function/Consumer;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method public provideDataStream(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)V
    .registers 7

    .line 509
    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WearableSensingManagerInternal provideDataStream."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    invoke-static {v0}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$fgetmContext(Lcom/android/server/wearable/WearableSensingManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_WEARABLE_SENSING_SERVICE"

    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    iget-boolean v0, v0, Lcom/android/server/wearable/WearableSensingManagerService;->mIsServiceEnabled:Z

    if-nez v0, :cond_32

    .line 515
    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Service not available."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    .line 516
    invoke-static {p3, p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V

    return-void

    .line 520
    :cond_32
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    new-instance v0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda2;-><init>(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)V

    invoke-static {p0, v0, p3}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$mcallPerUserServiceIfExist(Lcom/android/server/wearable/WearableSensingManagerService;Ljava/util/function/Consumer;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method public provideReadOnlyParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;Landroid/os/PersistableBundle;Landroid/os/RemoteCallback;)V
    .registers 6

    .line 494
    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WearableSensingManagerInternal provideReadOnlyParcelFileDescriptor."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    invoke-virtual {p0, p3}, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->validateAndGetPerUserService(Landroid/os/RemoteCallback;)Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    move-result-object p0

    if-nez p0, :cond_10

    return-void

    .line 500
    :cond_10
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->onProvideReadOnlyParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;Landroid/os/PersistableBundle;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method public registerDataRequestObserver(ILandroid/app/PendingIntent;Landroid/os/RemoteCallback;)V
    .registers 13

    .line 550
    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WearableSensingManagerInternal registerDataRequestObserver."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    invoke-static {v1}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$fgetmContext(Lcom/android/server/wearable/WearableSensingManagerService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.MANAGE_WEARABLE_SENSING_SERVICE"

    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    iget-boolean v1, v1, Lcom/android/server/wearable/WearableSensingManagerService;->mIsServiceEnabled:Z

    if-nez v1, :cond_2f

    .line 555
    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Service not available."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    .line 556
    invoke-static {p3, v0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V

    return-void

    .line 560
    :cond_2f
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 563
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    invoke-static {v1}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$fgetmDataRequestObserverContexts(Lcom/android/server/wearable/WearableSensingManagerService;)Ljava/util/Set;

    move-result-object v7

    monitor-enter v7

    .line 564
    :try_start_3a
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    .line 565
    invoke-static {v1, p1, v3, p2}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$mgetDataRequestObserverContext(Lcom/android/server/wearable/WearableSensingManagerService;IILandroid/app/PendingIntent;)Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;

    move-result-object v1

    if-eqz v1, :cond_54

    .line 567
    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    const-string v5, "Received duplicate data request observer."

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    iget-object v3, v1, Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;->mDataRequestRemoteCallback:Landroid/os/RemoteCallback;

    .line 569
    iget v1, v1, Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;->mDataRequestObserverId:I

    move-object v2, v3

    move v3, v1

    goto :goto_77

    :catchall_52
    move-exception v0

    goto :goto_86

    .line 571
    :cond_54
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    .line 572
    invoke-static {v1, p2, v3}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$mcreateDataRequestRemoteCallback(Lcom/android/server/wearable/WearableSensingManagerService;Landroid/app/PendingIntent;I)Landroid/os/RemoteCallback;

    move-result-object v6

    .line 573
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    invoke-static {v1}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$fgetmNextDataRequestObserverId(Lcom/android/server/wearable/WearableSensingManagerService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    .line 574
    iget-object v5, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    invoke-static {v5}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$fgetmDataRequestObserverContexts(Lcom/android/server/wearable/WearableSensingManagerService;)Ljava/util/Set;

    move-result-object v8

    move v4, v1

    new-instance v1, Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;

    move v2, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;-><init>(IIILandroid/app/PendingIntent;Landroid/os/RemoteCallback;)V

    invoke-interface {v8, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v3, v4

    move-object v2, v6

    .line 582
    :goto_77
    monitor-exit v7
    :try_end_78
    .catchall {:try_start_3a .. :try_end_78} :catchall_52

    .line 583
    iget-object v6, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    new-instance v0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda6;

    move v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda6;-><init>(ILandroid/os/RemoteCallback;ILandroid/app/PendingIntent;Landroid/os/RemoteCallback;)V

    invoke-static {v6, v0, p3}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$mcallPerUserServiceIfExist(Lcom/android/server/wearable/WearableSensingManagerService;Ljava/util/function/Consumer;Landroid/os/RemoteCallback;)V

    return-void

    .line 582
    :goto_86
    :try_start_86
    monitor-exit v7
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_52

    throw v0
.end method

.method public removeAllConnections()V
    .registers 3

    .line 480
    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WearableSensingManagerInternal removeAllConnections."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 482
    invoke-virtual {p0, v0}, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->validateAndGetPerUserService(Landroid/os/RemoteCallback;)Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    move-result-object p0

    if-nez p0, :cond_11

    return-void

    .line 486
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->removeAllConnections()V

    return-void
.end method

.method public removeConnection(I)Z
    .registers 4

    .line 469
    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WearableSensingManagerInternal removeConnection."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 471
    invoke-virtual {p0, v0}, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->validateAndGetPerUserService(Landroid/os/RemoteCallback;)Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    move-result-object p0

    if-nez p0, :cond_12

    const/4 p0, 0x0

    return p0

    .line 475
    :cond_12
    invoke-virtual {p0, p1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->removeConnection(I)Z

    move-result p0

    return p0
.end method

.method public startHotwordRecognition(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V
    .registers 6

    .line 638
    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WearableSensingManagerInternal startHotwordRecognition."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    invoke-static {v0}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$fgetmContext(Lcom/android/server/wearable/WearableSensingManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_WEARABLE_SENSING_SERVICE"

    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    iget-boolean v0, v0, Lcom/android/server/wearable/WearableSensingManagerService;->mIsServiceEnabled:Z

    if-nez v0, :cond_2f

    .line 643
    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Service not available."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    .line 644
    invoke-static {p2, p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V

    return-void

    .line 648
    :cond_2f
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    new-instance v0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda3;-><init>(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V

    invoke-static {p0, v0, p2}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$mcallPerUserServiceIfExist(Lcom/android/server/wearable/WearableSensingManagerService;Ljava/util/function/Consumer;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method public stopHotwordRecognition(Landroid/os/RemoteCallback;)V
    .registers 5

    .line 657
    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WearableSensingManagerInternal stopHotwordRecognition."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    invoke-static {v0}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$fgetmContext(Lcom/android/server/wearable/WearableSensingManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_WEARABLE_SENSING_SERVICE"

    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    iget-boolean v0, v0, Lcom/android/server/wearable/WearableSensingManagerService;->mIsServiceEnabled:Z

    if-nez v0, :cond_2f

    .line 662
    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Service not available."

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    .line 663
    invoke-static {p1, p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V

    return-void

    .line 667
    :cond_2f
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    new-instance v0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda4;-><init>(Landroid/os/RemoteCallback;)V

    invoke-static {p0, v0, p1}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$mcallPerUserServiceIfExist(Lcom/android/server/wearable/WearableSensingManagerService;Ljava/util/function/Consumer;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method public unregisterDataRequestObserver(ILandroid/app/PendingIntent;Landroid/os/RemoteCallback;)V
    .registers 7

    .line 599
    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WearableSensingManagerInternal unregisterDataRequestObserver."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    invoke-static {v0}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$fgetmContext(Lcom/android/server/wearable/WearableSensingManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_WEARABLE_SENSING_SERVICE"

    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    iget-boolean v0, v0, Lcom/android/server/wearable/WearableSensingManagerService;->mIsServiceEnabled:Z

    if-nez v0, :cond_32

    .line 605
    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Service not available."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    .line 606
    invoke-static {p3, p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V

    return-void

    .line 610
    :cond_32
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 613
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    invoke-static {v1}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$fgetmDataRequestObserverContexts(Lcom/android/server/wearable/WearableSensingManagerService;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    .line 614
    :try_start_3d
    iget-object v2, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    .line 615
    invoke-static {v2, p1, v0, p2}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$mgetDataRequestObserverContext(Lcom/android/server/wearable/WearableSensingManagerService;IILandroid/app/PendingIntent;)Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;

    move-result-object p2

    if-nez p2, :cond_52

    .line 617
    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Previous observer not found, cannot unregister."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    monitor-exit v1

    return-void

    :catchall_50
    move-exception p0

    goto :goto_6f

    .line 620
    :cond_52
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    invoke-static {v0}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$fgetmDataRequestObserverContexts(Lcom/android/server/wearable/WearableSensingManagerService;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 621
    iget v0, p2, Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;->mDataRequestObserverId:I

    .line 622
    iget-object p2, p2, Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;->mDataRequestPendingIntent:Landroid/app/PendingIntent;

    .line 623
    invoke-virtual {p2}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object p2

    .line 624
    monitor-exit v1
    :try_end_64
    .catchall {:try_start_3d .. :try_end_64} :catchall_50

    .line 625
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    new-instance v1, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, v0, p2, p3}, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda0;-><init>(IILjava/lang/String;Landroid/os/RemoteCallback;)V

    invoke-static {p0, v1, p3}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$mcallPerUserServiceIfExist(Lcom/android/server/wearable/WearableSensingManagerService;Ljava/util/function/Consumer;Landroid/os/RemoteCallback;)V

    return-void

    .line 624
    :goto_6f
    :try_start_6f
    monitor-exit v1
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_50

    throw p0
.end method

.method public final validateAndGetPerUserService(Landroid/os/RemoteCallback;)Lcom/android/server/wearable/WearableSensingManagerPerUserService;
    .registers 7

    .line 705
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    invoke-static {v0}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$fgetmContext(Lcom/android/server/wearable/WearableSensingManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_WEARABLE_SENSING_SERVICE"

    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    iget-boolean v0, v0, Lcom/android/server/wearable/WearableSensingManagerService;->mIsServiceEnabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-nez v0, :cond_26

    .line 708
    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Service not available."

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_25

    .line 710
    invoke-static {p1, v2}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V

    :cond_25
    return-object v1

    .line 715
    :cond_26
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 717
    iget-object v3, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/wearable/WearableSensingManagerService;->access$200(Lcom/android/server/wearable/WearableSensingManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 718
    :try_start_31
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    # invokes: Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {p0, v0}, Lcom/android/server/wearable/WearableSensingManagerService;->access$300(Lcom/android/server/wearable/WearableSensingManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    .line 719
    monitor-exit v3
    :try_end_3a
    .catchall {:try_start_31 .. :try_end_3a} :catchall_5b

    if-nez p0, :cond_5a

    .line 721
    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service not available for userId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_59

    .line 723
    invoke-static {p1, v2}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V

    :cond_59
    return-object v1

    :cond_5a
    return-object p0

    :catchall_5b
    move-exception p0

    .line 719
    :try_start_5c
    monitor-exit v3
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw p0
.end method
