.class public Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;
.super Landroid/content/IClipboard$Stub;
.source "ClipboardService.java"


# instance fields
.field public final mClipboardClearHandler:Landroid/os/Handler;

.field public final synthetic this$0:Lcom/android/server/clipboard/ClipboardService;


# direct methods
.method public constructor <init>(Lcom/android/server/clipboard/ClipboardService;)V
    .registers 3

    .line 497
    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-direct {p0}, Landroid/content/IClipboard$Stub;-><init>()V

    .line 499
    new-instance v0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl$ClipboardClearHandler;

    invoke-static {p1}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$fgetmWorkerHandler(Lcom/android/server/clipboard/ClipboardService;)Landroid/os/Handler;

    move-result-object p1

    .line 500
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl$ClipboardClearHandler;-><init>(Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->mClipboardClearHandler:Landroid/os/Handler;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/clipboard/ClipboardService;Lcom/android/server/clipboard/ClipboardService-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;-><init>(Lcom/android/server/clipboard/ClipboardService;)V

    return-void
.end method


# virtual methods
.method public addPrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 10

    .line 763
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v0, p2, p4}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetIntendingUid(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I

    move-result v0

    .line 764
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 765
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v2, p5, v0}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetIntendingDeviceId(Lcom/android/server/clipboard/ClipboardService;II)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_42

    .line 767
    const-string p0, "ClipboardService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "addPrimaryClipChangedListener invalid deviceId for userId:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " uid:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " callingPackage:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " requestedDeviceId:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 772
    :cond_42
    iget-object p4, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {p4}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$fgetmLock(Lcom/android/server/clipboard/ClipboardService;)Ljava/lang/Object;

    move-result-object p4

    monitor-enter p4

    .line 773
    :try_start_49
    iget-object p5, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {p5, v1, v2}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetClipboardLocked(Lcom/android/server/clipboard/ClipboardService;II)Lcom/android/server/clipboard/ClipboardService$Clipboard;

    move-result-object p5

    if-nez p5, :cond_55

    .line 775
    monitor-exit p4

    return-void

    :catchall_53
    move-exception p0

    goto :goto_63

    .line 777
    :cond_55
    iget-object p5, p5, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    new-instance v1, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;

    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-direct {v1, p0, v0, p2, p3}, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;-><init>(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;Ljava/lang/String;)V

    .line 778
    invoke-virtual {p5, p1, v1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 781
    monitor-exit p4

    return-void

    :goto_63
    monitor-exit p4
    :try_end_64
    .catchall {:try_start_49 .. :try_end_64} :catchall_53

    throw p0
.end method

.method public areClipboardAccessNotificationsEnabledForUser(I)Z
    .registers 6

    .line 543
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_CLIPBOARD_ACCESS_NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_34

    .line 550
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 552
    :try_start_12
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "clipboard_show_access_notifications"

    .line 554
    invoke-virtual {p0}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->getDefaultClipboardAccessNotificationsSetting()I

    move-result p0

    .line 552
    invoke-static {v2, v3, p0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0
    :try_end_26
    .catchall {:try_start_12 .. :try_end_26} :catchall_2f

    if-eqz p0, :cond_2a

    const/4 p0, 0x1

    goto :goto_2b

    :cond_2a
    const/4 p0, 0x0

    .line 556
    :goto_2b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_2f
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 557
    throw p0

    .line 546
    :cond_34
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "areClipboardAccessNotificationsEnable requires permission MANAGE_CLIPBOARD_ACCESS_NOTIFICATION"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final checkAndSetPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .registers 15

    if-eqz p1, :cond_3f

    .line 593
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    if-lez v0, :cond_3f

    .line 596
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v0, p2, p4}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetIntendingUid(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I

    move-result v5

    .line 597
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 598
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v0, p5, v5}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetIntendingDeviceId(Lcom/android/server/clipboard/ClipboardService;II)I

    move-result v7

    .line 599
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    const/16 v2, 0x1e

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v1 .. v7}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mclipboardAccessAllowed(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;Ljava/lang/String;III)Z

    move-result p2

    if-nez p2, :cond_25

    return-void

    .line 608
    :cond_25
    iget-object p2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {p2, p1, v5}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mcheckDataOwner(Lcom/android/server/clipboard/ClipboardService;Landroid/content/ClipData;I)V

    .line 609
    iget-object p2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {p2}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$fgetmLock(Lcom/android/server/clipboard/ClipboardService;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 610
    :try_start_31
    invoke-virtual {p0, p4, v5, v7}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->scheduleAutoClear(III)V

    .line 611
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {p0, p1, v5, v7, p6}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$msetPrimaryClipInternalLocked(Lcom/android/server/clipboard/ClipboardService;Landroid/content/ClipData;IILjava/lang/String;)V

    .line 612
    monitor-exit p2

    return-void

    :catchall_3b
    move-exception v0

    move-object p0, v0

    monitor-exit p2
    :try_end_3e
    .catchall {:try_start_31 .. :try_end_3e} :catchall_3b

    throw p0

    .line 594
    :cond_3f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No items"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public clearPrimaryClip(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 13

    .line 648
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v0, p1, p3}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetIntendingUid(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I

    move-result v5

    .line 649
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 650
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v0, p4, v5}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetIntendingDeviceId(Lcom/android/server/clipboard/ClipboardService;II)I

    move-result v7

    .line 651
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    const/16 v2, 0x1e

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v1 .. v7}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mclipboardAccessAllowed(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;Ljava/lang/String;III)Z

    move-result p1

    if-nez p1, :cond_1d

    return-void

    .line 660
    :cond_1d
    iget-object p1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {p1}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$fgetmLock(Lcom/android/server/clipboard/ClipboardService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 661
    :try_start_24
    iget-object p2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->mClipboardClearHandler:Landroid/os/Handler;

    new-instance v0, Landroid/util/Pair;

    .line 662
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-direct {v0, p3, p4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 p3, 0x65

    .line 661
    invoke-virtual {p2, p3, v0}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 663
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    const/4 p2, 0x0

    invoke-static {p0, p2, v5, v7, v3}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$msetPrimaryClipInternalLocked(Lcom/android/server/clipboard/ClipboardService;Landroid/content/ClipData;IILjava/lang/String;)V

    .line 664
    monitor-exit p1

    return-void

    :catchall_40
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_43
    .catchall {:try_start_24 .. :try_end_43} :catchall_40

    throw p0
.end method

.method public final getDefaultClipboardAccessNotificationsSetting()I
    .registers 3

    .line 581
    const-string/jumbo p0, "show_access_notifications"

    const/4 v0, 0x1

    const-string v1, "clipboard"

    invoke-static {v1, p0, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getPrimaryClip(Ljava/lang/String;Ljava/lang/String;II)Landroid/content/ClipData;
    .registers 13

    .line 670
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v0, p1, p3}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetIntendingUid(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I

    move-result v3

    .line 671
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 672
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v0, p4, v3}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetIntendingDeviceId(Lcom/android/server/clipboard/ClipboardService;II)I

    move-result v7

    .line 673
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    const/16 v2, 0x1d

    move v5, v3

    move v6, v4

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v1 .. v7}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mclipboardAccessAllowed(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;Ljava/lang/String;III)Z

    move-result p1

    move-object v2, v3

    move v3, v5

    move v4, v6

    const/4 p2, 0x0

    if-eqz p1, :cond_71

    iget-object p1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 680
    invoke-static {p1, v4, p4}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$misDeviceLocked(Lcom/android/server/clipboard/ClipboardService;II)Z

    move-result p1

    if-eqz p1, :cond_2b

    goto :goto_71

    .line 683
    :cond_2b
    iget-object p1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {p1}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$fgetmLock(Lcom/android/server/clipboard/ClipboardService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 685
    :try_start_32
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v0, v3, v7, v2}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$maddActiveOwnerLocked(Lcom/android/server/clipboard/ClipboardService;IILjava/lang/String;)V
    :try_end_37
    .catch Ljava/lang/SecurityException; {:try_start_32 .. :try_end_37} :catch_61
    .catchall {:try_start_32 .. :try_end_37} :catchall_41

    .line 693
    :try_start_37
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v0, v4, v7}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetClipboardLocked(Lcom/android/server/clipboard/ClipboardService;II)Lcom/android/server/clipboard/ClipboardService$Clipboard;

    move-result-object v5

    if-nez v5, :cond_44

    .line 695
    monitor-exit p1

    return-object p2

    :catchall_41
    move-exception v0

    move-object p0, v0

    goto :goto_6f

    .line 697
    :cond_44
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    move v6, p4

    invoke-static/range {v1 .. v6}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mshowAccessNotificationLocked(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;IILcom/android/server/clipboard/ClipboardService$Clipboard;I)V

    .line 699
    iget-object p2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {p2, v5, v2, v3}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mnotifyTextClassifierLocked(Lcom/android/server/clipboard/ClipboardService;Lcom/android/server/clipboard/ClipboardService$Clipboard;Ljava/lang/String;I)V

    .line 700
    iget-object p2, v5, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz p2, :cond_5d

    .line 701
    iget-object p4, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    iget v0, v5, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClipUid:I

    invoke-static {p4, p2, v0, v3}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mscheduleWriteClipDataStats(Lcom/android/server/clipboard/ClipboardService;Landroid/content/ClipData;II)V

    .line 703
    invoke-virtual {p0, p3, v3, v7}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->scheduleAutoClear(III)V

    .line 705
    :cond_5d
    iget-object p0, v5, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    monitor-exit p1

    return-object p0

    .line 688
    :catch_61
    const-string p3, "ClipboardService"

    const-string p4, "Could not grant permission to primary clip. Clearing clipboard."

    invoke-static {p3, p4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {p0, p2, v3, v7, v2}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$msetPrimaryClipInternalLocked(Lcom/android/server/clipboard/ClipboardService;Landroid/content/ClipData;IILjava/lang/String;)V

    .line 690
    monitor-exit p1

    return-object p2

    .line 706
    :goto_6f
    monitor-exit p1
    :try_end_70
    .catchall {:try_start_37 .. :try_end_70} :catchall_41

    throw p0

    :cond_71
    :goto_71
    return-object p2
.end method

.method public getPrimaryClipDescription(Ljava/lang/String;Ljava/lang/String;II)Landroid/content/ClipDescription;
    .registers 14

    .line 712
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v0, p1, p3}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetIntendingUid(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I

    move-result v5

    .line 713
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 714
    iget-object p3, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {p3, p4, v5}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetIntendingDeviceId(Lcom/android/server/clipboard/ClipboardService;II)I

    move-result v7

    .line 715
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    const/16 v2, 0x1d

    const/4 v8, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v1 .. v8}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mclipboardAccessAllowed(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;Ljava/lang/String;IIIZ)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_46

    iget-object p1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 723
    invoke-static {p1, v6, p4}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$misDeviceLocked(Lcom/android/server/clipboard/ClipboardService;II)Z

    move-result p1

    if-eqz p1, :cond_27

    goto :goto_46

    .line 726
    :cond_27
    iget-object p1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {p1}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$fgetmLock(Lcom/android/server/clipboard/ClipboardService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 727
    :try_start_2e
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {p0, v6, v7}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetClipboardLocked(Lcom/android/server/clipboard/ClipboardService;II)Lcom/android/server/clipboard/ClipboardService$Clipboard;

    move-result-object p0

    if-eqz p0, :cond_42

    .line 728
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz p0, :cond_42

    .line 729
    invoke-virtual {p0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object p2

    goto :goto_42

    :catchall_3f
    move-exception v0

    move-object p0, v0

    goto :goto_44

    :cond_42
    :goto_42
    monitor-exit p1

    return-object p2

    .line 730
    :goto_44
    monitor-exit p1
    :try_end_45
    .catchall {:try_start_2e .. :try_end_45} :catchall_3f

    throw p0

    :cond_46
    :goto_46
    return-object p2
.end method

.method public getPrimaryClipSource(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .registers 14

    .line 839
    invoke-virtual {p0}, Landroid/content/IClipboard$Stub;->getPrimaryClipSource_enforcePermission()V

    .line 840
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v0, p1, p3}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetIntendingUid(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I

    move-result v5

    .line 841
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 842
    iget-object p3, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {p3, p4, v5}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetIntendingDeviceId(Lcom/android/server/clipboard/ClipboardService;II)I

    move-result v7

    .line 843
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    const/16 v2, 0x1d

    const/4 v8, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v1 .. v8}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mclipboardAccessAllowed(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;Ljava/lang/String;IIIZ)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_48

    iget-object p1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 851
    invoke-static {p1, v6, p4}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$misDeviceLocked(Lcom/android/server/clipboard/ClipboardService;II)Z

    move-result p1

    if-eqz p1, :cond_2a

    goto :goto_48

    .line 854
    :cond_2a
    iget-object p1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {p1}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$fgetmLock(Lcom/android/server/clipboard/ClipboardService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 855
    :try_start_31
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {p0, v6, v7}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetClipboardLocked(Lcom/android/server/clipboard/ClipboardService;II)Lcom/android/server/clipboard/ClipboardService$Clipboard;

    move-result-object p0

    if-eqz p0, :cond_44

    .line 856
    iget-object p3, p0, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz p3, :cond_44

    .line 857
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService$Clipboard;->mPrimaryClipPackage:Ljava/lang/String;

    monitor-exit p1

    return-object p0

    :catchall_41
    move-exception v0

    move-object p0, v0

    goto :goto_46

    .line 859
    :cond_44
    monitor-exit p1

    return-object p2

    .line 860
    :goto_46
    monitor-exit p1
    :try_end_47
    .catchall {:try_start_31 .. :try_end_47} :catchall_41

    throw p0

    :cond_48
    :goto_48
    return-object p2
.end method

.method public final getTimeoutForAutoClear()J
    .registers 4

    .line 640
    const-string p0, "auto_clear_timeout"

    const-wide/32 v0, 0x36ee80

    const-string v2, "clipboard"

    invoke-static {v2, p0, v0, v1}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public hasClipboardText(Ljava/lang/String;Ljava/lang/String;II)Z
    .registers 14

    .line 811
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v0, p1, p3}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetIntendingUid(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I

    move-result v5

    .line 812
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 813
    iget-object p3, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {p3, p4, v5}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetIntendingDeviceId(Lcom/android/server/clipboard/ClipboardService;II)I

    move-result v7

    .line 814
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    const/16 v2, 0x1d

    const/4 v8, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v1 .. v8}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mclipboardAccessAllowed(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;Ljava/lang/String;IIIZ)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_55

    iget-object p1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 822
    invoke-static {p1, v6, p4}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$misDeviceLocked(Lcom/android/server/clipboard/ClipboardService;II)Z

    move-result p1

    if-eqz p1, :cond_27

    goto :goto_55

    .line 825
    :cond_27
    iget-object p1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {p1}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$fgetmLock(Lcom/android/server/clipboard/ClipboardService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 826
    :try_start_2e
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {p0, v6, v7}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetClipboardLocked(Lcom/android/server/clipboard/ClipboardService;II)Lcom/android/server/clipboard/ClipboardService$Clipboard;

    move-result-object p0

    if-eqz p0, :cond_51

    .line 827
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz p0, :cond_51

    .line 828
    invoke-virtual {p0, p2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_4f

    .line 829
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-lez p0, :cond_4f

    const/4 p2, 0x1

    goto :goto_4f

    :catchall_4c
    move-exception v0

    move-object p0, v0

    goto :goto_53

    :cond_4f
    :goto_4f
    monitor-exit p1

    return p2

    .line 831
    :cond_51
    monitor-exit p1

    return p2

    .line 832
    :goto_53
    monitor-exit p1
    :try_end_54
    .catchall {:try_start_2e .. :try_end_54} :catchall_4c

    throw p0

    :cond_55
    :goto_55
    return p2
.end method

.method public hasPrimaryClip(Ljava/lang/String;Ljava/lang/String;II)Z
    .registers 14

    .line 736
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v0, p1, p3}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetIntendingUid(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I

    move-result v5

    .line 737
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 738
    iget-object p3, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {p3, p4, v5}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetIntendingDeviceId(Lcom/android/server/clipboard/ClipboardService;II)I

    move-result v7

    .line 739
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    const/16 v2, 0x1d

    const/4 v8, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v1 .. v8}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mclipboardAccessAllowed(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;Ljava/lang/String;IIIZ)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_43

    iget-object p1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 747
    invoke-static {p1, v6, p4}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$misDeviceLocked(Lcom/android/server/clipboard/ClipboardService;II)Z

    move-result p1

    if-eqz p1, :cond_27

    goto :goto_43

    .line 750
    :cond_27
    iget-object p1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {p1}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$fgetmLock(Lcom/android/server/clipboard/ClipboardService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 751
    :try_start_2e
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {p0, v6, v7}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetClipboardLocked(Lcom/android/server/clipboard/ClipboardService;II)Lcom/android/server/clipboard/ClipboardService$Clipboard;

    move-result-object p0

    if-eqz p0, :cond_3f

    .line 752
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz p0, :cond_3f

    const/4 p2, 0x1

    goto :goto_3f

    :catchall_3c
    move-exception v0

    move-object p0, v0

    goto :goto_41

    :cond_3f
    :goto_3f
    monitor-exit p1

    return p2

    .line 753
    :goto_41
    monitor-exit p1
    :try_end_42
    .catchall {:try_start_2e .. :try_end_42} :catchall_3c

    throw p0

    :cond_43
    :goto_43
    return p2
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5

    .line 506
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/IClipboard$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    :catch_5
    move-exception p0

    .line 508
    instance-of p1, p0, Ljava/lang/SecurityException;

    if-nez p1, :cond_11

    .line 509
    const-string p1, "clipboard"

    const-string p2, "Exception: "

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 511
    :cond_11
    throw p0
.end method

.method public removePrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 8

    .line 791
    iget-object p3, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {p3, p2, p4}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetIntendingUid(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I

    move-result p3

    .line 792
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v0, p2, p4}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetIntendingUserId(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I

    move-result v0

    .line 793
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v1, p5, p3}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetIntendingDeviceId(Lcom/android/server/clipboard/ClipboardService;II)I

    move-result p5

    const/4 v1, -0x1

    if-ne p5, v1, :cond_3d

    .line 795
    const-string p0, "ClipboardService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p5, "removePrimaryClipChangedListener invalid deviceId for userId:"

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " uid:"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " callingPackage:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 799
    :cond_3d
    iget-object p2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {p2}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$fgetmLock(Lcom/android/server/clipboard/ClipboardService;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 800
    :try_start_44
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {p0, v0, p5}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetClipboardLocked(Lcom/android/server/clipboard/ClipboardService;II)Lcom/android/server/clipboard/ClipboardService$Clipboard;

    move-result-object p0

    if-eqz p0, :cond_54

    .line 803
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    goto :goto_54

    :catchall_52
    move-exception p0

    goto :goto_56

    .line 805
    :cond_54
    :goto_54
    monitor-exit p2

    return-void

    :goto_56
    monitor-exit p2
    :try_end_57
    .catchall {:try_start_44 .. :try_end_57} :catchall_52

    throw p0
.end method

.method public final scheduleAutoClear(III)V
    .registers 9

    .line 617
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 619
    :try_start_4
    const-string v2, "clipboard"

    const-string v3, "auto_clear_enabled"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 621
    new-instance v2, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {v2, v3, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 622
    iget-object p3, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->mClipboardClearHandler:Landroid/os/Handler;

    const/16 v3, 0x65

    invoke-virtual {p3, v3, v2}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 624
    iget-object p3, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->mClipboardClearHandler:Landroid/os/Handler;

    .line 625
    invoke-static {p3, v3, p1, p2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 631
    iget-object p2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->mClipboardClearHandler:Landroid/os/Handler;

    .line 632
    invoke-virtual {p0}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->getTimeoutForAutoClear()J

    move-result-wide v2

    .line 631
    invoke-virtual {p2, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_32
    .catchall {:try_start_4 .. :try_end_32} :catchall_33

    goto :goto_35

    :catchall_33
    move-exception p0

    goto :goto_39

    .line 635
    :cond_35
    :goto_35
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_39
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 636
    throw p0
.end method

.method public setClipboardAccessNotificationsEnabledForUser(ZI)V
    .registers 6

    .line 562
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_CLIPBOARD_ACCESS_NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_33

    .line 569
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 571
    :try_start_12
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 572
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    const/4 v2, 0x0

    invoke-virtual {p0, p2, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 573
    const-string p2, "clipboard_show_access_notifications"

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_2a
    .catchall {:try_start_12 .. :try_end_2a} :catchall_2e

    .line 576
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_2e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 577
    throw p0

    .line 565
    :cond_33
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "areClipboardAccessNotificationsEnable requires permission MANAGE_CLIPBOARD_ACCESS_NOTIFICATION"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 13

    move-object v6, p2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 523
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->checkAndSetPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public setPrimaryClipAsPackage(Landroid/content/ClipData;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .registers 7

    .line 536
    invoke-virtual {p0}, Landroid/content/IClipboard$Stub;->setPrimaryClipAsPackage_enforcePermission()V

    .line 537
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->checkAndSetPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method
