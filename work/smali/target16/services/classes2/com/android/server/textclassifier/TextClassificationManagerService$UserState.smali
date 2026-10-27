.class public final Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;
.super Ljava/lang/Object;
.source "TextClassificationManagerService.java"


# instance fields
.field public final mDefaultServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

.field public final mSystemServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

.field public mUntrustedServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

.field public final mUserId:I

.field public final synthetic this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;


# direct methods
.method public static bridge synthetic -$$Nest$mgetServiceStateLocked(Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;Ljava/lang/String;)Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->getServiceStateLocked(Ljava/lang/String;)Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mupdatePackageStateLocked(Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->updatePackageStateLocked()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/textclassifier/TextClassificationManagerService;I)V
    .registers 12

    .line 788
    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 789
    iput p2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mUserId:I

    .line 790
    invoke-static {p1}, Lcom/android/server/textclassifier/TextClassificationManagerService;->-$$Nest$fgetmDefaultTextClassifierPackage(Lcom/android/server/textclassifier/TextClassificationManagerService;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    move-object v3, p1

    move v4, p2

    move-object v2, v1

    goto :goto_23

    .line 792
    :cond_16
    new-instance v2, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    invoke-static {p1}, Lcom/android/server/textclassifier/TextClassificationManagerService;->-$$Nest$fgetmDefaultTextClassifierPackage(Lcom/android/server/textclassifier/TextClassificationManagerService;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;-><init>(Lcom/android/server/textclassifier/TextClassificationManagerService;ILjava/lang/String;ZLcom/android/server/textclassifier/TextClassificationManagerService-IA;)V

    :goto_23
    iput-object v2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mDefaultServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    .line 793
    invoke-static {v3}, Lcom/android/server/textclassifier/TextClassificationManagerService;->-$$Nest$fgetmSystemTextClassifierPackage(Lcom/android/server/textclassifier/TextClassificationManagerService;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_30

    goto :goto_3e

    :cond_30
    move v5, v4

    move-object v4, v3

    .line 795
    new-instance v3, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    invoke-static {v4}, Lcom/android/server/textclassifier/TextClassificationManagerService;->-$$Nest$fgetmSystemTextClassifierPackage(Lcom/android/server/textclassifier/TextClassificationManagerService;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;-><init>(Lcom/android/server/textclassifier/TextClassificationManagerService;ILjava/lang/String;ZLcom/android/server/textclassifier/TextClassificationManagerService-IA;)V

    move-object v1, v3

    :goto_3e
    iput-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mSystemServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/textclassifier/TextClassificationManagerService;ILcom/android/server/textclassifier/TextClassificationManagerService-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;-><init>(Lcom/android/server/textclassifier/TextClassificationManagerService;I)V

    return-void
.end method


# virtual methods
.method public bindIfHasPendingRequestsLocked()V
    .registers 2

    .line 840
    invoke-virtual {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->getAllServiceStatesLocked()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    .line 841
    invoke-static {v0}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->-$$Nest$mbindIfHasPendingRequestsLocked(Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;)Z

    goto :goto_8

    :cond_18
    return-void
.end method

.method public cleanupServiceLocked()V
    .registers 2

    .line 847
    invoke-virtual {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->getAllServiceStatesLocked()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    .line 848
    iget-object v0, v0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mConnection:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState$TextClassifierServiceConnection;

    if-eqz v0, :cond_8

    .line 849
    invoke-virtual {v0}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState$TextClassifierServiceConnection;->cleanupService()V

    goto :goto_8

    :cond_1c
    return-void
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 5

    .line 889
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-static {v0}, Lcom/android/server/textclassifier/TextClassificationManagerService;->-$$Nest$fgetmLock(Lcom/android/server/textclassifier/TextClassificationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 890
    :try_start_7
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 891
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mDefaultServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    const-string v2, "Default"

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->dump(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;Ljava/lang/String;)V

    .line 892
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mSystemServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    const-string v2, "System"

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->dump(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;Ljava/lang/String;)V

    .line 893
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mUntrustedServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    const-string v2, "Untrusted"

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->dump(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;Ljava/lang/String;)V

    .line 894
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 895
    monitor-exit v0

    return-void

    :catchall_24
    move-exception p0

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_24

    throw p0
.end method

.method public final dump(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;Ljava/lang/String;)V
    .registers 5

    .line 900
    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-static {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService;->-$$Nest$fgetmLock(Lcom/android/server/textclassifier/TextClassificationManagerService;)Ljava/lang/Object;

    move-result-object p0

    monitor-enter p0

    if-eqz p2, :cond_26

    .line 902
    :try_start_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 903
    invoke-static {p2, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->-$$Nest$mdump(Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 904
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    goto :goto_26

    :catchall_24
    move-exception p1

    goto :goto_28

    .line 906
    :cond_26
    :goto_26
    monitor-exit p0

    return-void

    :goto_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_9 .. :try_end_29} :catchall_24

    throw p1
.end method

.method public final getAllServiceStatesLocked()Ljava/util/List;
    .registers 3

    .line 857
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 858
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mDefaultServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    if-eqz v1, :cond_c

    .line 859
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 861
    :cond_c
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mSystemServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    if-eqz v1, :cond_13

    .line 862
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 864
    :cond_13
    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mUntrustedServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    if-eqz p0, :cond_1a

    .line 865
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1a
    return-object v0
.end method

.method public final getServiceStateLocked(Ljava/lang/String;)Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;
    .registers 4

    .line 873
    invoke-virtual {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->getAllServiceStatesLocked()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    .line 874
    iget-object v1, v0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    return-object v0

    :cond_1d
    const/4 p0, 0x0

    return-object p0
.end method

.method public getServiceStateLocked(Z)Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;
    .registers 8

    if-eqz p1, :cond_5

    .line 802
    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mDefaultServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    return-object p0

    .line 804
    :cond_5
    iget-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-static {p1}, Lcom/android/server/textclassifier/TextClassificationManagerService;->-$$Nest$fgetmSettings(Lcom/android/server/textclassifier/TextClassificationManagerService;)Landroid/view/textclassifier/TextClassificationConstants;

    move-result-object p1

    .line 806
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState$$ExternalSyntheticLambda0;-><init>(Landroid/view/textclassifier/TextClassificationConstants;)V

    .line 805
    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    .line 807
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_54

    .line 808
    iget-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-static {p1}, Lcom/android/server/textclassifier/TextClassificationManagerService;->-$$Nest$fgetmDefaultTextClassifierPackage(Lcom/android/server/textclassifier/TextClassificationManagerService;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 809
    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mDefaultServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    return-object p0

    .line 811
    :cond_2f
    iget-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-static {p1}, Lcom/android/server/textclassifier/TextClassificationManagerService;->-$$Nest$fgetmSystemTextClassifierPackage(Lcom/android/server/textclassifier/TextClassificationManagerService;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_40

    iget-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mSystemServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    if-eqz p1, :cond_40

    return-object p1

    .line 815
    :cond_40
    iget-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mUntrustedServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    if-nez p1, :cond_51

    .line 816
    new-instance v0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    iget v2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mUserId:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;-><init>(Lcom/android/server/textclassifier/TextClassificationManagerService;ILjava/lang/String;ZLcom/android/server/textclassifier/TextClassificationManagerService-IA;)V

    iput-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mUntrustedServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    .line 822
    :cond_51
    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mUntrustedServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    return-object p0

    .line 824
    :cond_54
    iget-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mSystemServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    if-eqz p1, :cond_59

    return-object p1

    :cond_59
    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mDefaultServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    return-object p0
.end method

.method public onTextClassifierServicePackageOverrideChangedLocked(Ljava/lang/String;)V
    .registers 3

    .line 832
    invoke-virtual {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->getAllServiceStatesLocked()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    .line 833
    invoke-virtual {v0}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->unbindIfBoundLocked()V

    goto :goto_8

    :cond_18
    const/4 p1, 0x0

    .line 835
    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mUntrustedServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    return-void
.end method

.method public final updatePackageStateLocked()V
    .registers 2

    .line 883
    invoke-virtual {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->getAllServiceStatesLocked()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    .line 884
    invoke-static {v0}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->-$$Nest$mupdatePackageStateLocked(Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;)V

    goto :goto_8

    :cond_18
    return-void
.end method
