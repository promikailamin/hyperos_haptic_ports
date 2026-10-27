.class Landroid/app/wearable/WearableSensingManager$1;
.super Landroid/app/wearable/IWearableSensingCallback$Stub;
.source "WearableSensingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/wearable/WearableSensingManager;->createWearableSensingCallback(Ljava/util/concurrent/Executor;)Landroid/app/wearable/IWearableSensingCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/wearable/WearableSensingManager;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$Gtfj7A2IVR2kFtlzeg6PG4SBaLs(Landroid/app/wearable/WearableSensingManager$1;Ljava/util/concurrent/Executor;Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/app/wearable/WearableSensingManager$1;->lambda$openFile$1(Ljava/util/concurrent/Executor;Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$i795Q_Cs00OS0UpdXPr6oXxDvq4(Landroid/app/wearable/WearableSensingManager$1;Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/app/wearable/WearableSensingManager$1;->lambda$openFile$0(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/app/wearable/WearableSensingManager;Ljava/util/concurrent/Executor;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 719
    iput-object p1, p0, Landroid/app/wearable/WearableSensingManager$1;->this$0:Landroid/app/wearable/WearableSensingManager;

    iput-object p2, p0, Landroid/app/wearable/WearableSensingManager$1;->val$executor:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Landroid/app/wearable/IWearableSensingCallback$Stub;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$openFile$0(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .registers 7

    .line 728
    const-string v0, "Error closing ParcelFileDescriptor."

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Landroid/app/wearable/WearableSensingManager$1;->this$0:Landroid/app/wearable/WearableSensingManager;

    invoke-static {v2}, Landroid/app/wearable/WearableSensingManager;->-$$Nest$fgetmContext(Landroid/app/wearable/WearableSensingManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 729
    nop

    .line 731
    nop

    .line 732
    const/4 p1, 0x0

    const/high16 v2, 0x10000000

    :try_start_16
    invoke-static {v1, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    .line 736
    invoke-static {}, Landroid/app/wearable/WearableSensingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Successfully opened a file with ParcelFileDescriptor."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_23} :catch_37
    .catchall {:try_start_16 .. :try_end_23} :catchall_35

    .line 743
    invoke-virtual {p2, p1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 744
    if-eqz p1, :cond_47

    .line 746
    :goto_28
    :try_start_28
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_2c

    .line 753
    :goto_2b
    goto :goto_47

    .line 747
    :catch_2c
    move-exception p1

    .line 748
    invoke-static {}, Landroid/app/wearable/WearableSensingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2b

    .line 743
    :catchall_35
    move-exception v1

    goto :goto_48

    .line 740
    :catch_37
    move-exception v1

    .line 741
    :try_start_38
    invoke-static {}, Landroid/app/wearable/WearableSensingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Cannot open file."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_41
    .catchall {:try_start_38 .. :try_end_41} :catchall_35

    .line 743
    invoke-virtual {p2, p1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 744
    if-eqz p1, :cond_47

    .line 746
    goto :goto_28

    .line 756
    :cond_47
    :goto_47
    return-void

    .line 743
    :goto_48
    invoke-virtual {p2, p1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 744
    if-eqz p1, :cond_59

    .line 746
    :try_start_4d
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_51

    .line 753
    goto :goto_59

    .line 747
    :catch_51
    move-exception p1

    .line 748
    invoke-static {}, Landroid/app/wearable/WearableSensingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 755
    :cond_59
    :goto_59
    throw v1
.end method

.method private synthetic blacklist lambda$openFile$1(Ljava/util/concurrent/Executor;Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 726
    new-instance v0, Landroid/app/wearable/WearableSensingManager$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2, p3}, Landroid/app/wearable/WearableSensingManager$1$$ExternalSyntheticLambda1;-><init>(Landroid/app/wearable/WearableSensingManager$1;Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public blacklist openFile(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 723
    invoke-static {}, Landroid/app/wearable/WearableSensingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IWearableSensingCallback#openFile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    iget-object v0, p0, Landroid/app/wearable/WearableSensingManager$1;->val$executor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/app/wearable/WearableSensingManager$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0, p1, p2}, Landroid/app/wearable/WearableSensingManager$1$$ExternalSyntheticLambda0;-><init>(Landroid/app/wearable/WearableSensingManager$1;Ljava/util/concurrent/Executor;Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 757
    return-void
.end method
