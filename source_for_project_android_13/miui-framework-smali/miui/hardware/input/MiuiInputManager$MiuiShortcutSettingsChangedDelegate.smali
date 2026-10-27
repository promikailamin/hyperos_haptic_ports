.class Lmiui/hardware/input/MiuiInputManager$MiuiShortcutSettingsChangedDelegate;
.super Landroid/os/Handler;
.source "MiuiInputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/hardware/input/MiuiInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MiuiShortcutSettingsChangedDelegate"
.end annotation


# static fields
.field static final blacklist DATA_ACTION:Ljava/lang/String; = "action"

.field static final blacklist DATA_FUNCTION:Ljava/lang/String; = "function"

.field static final blacklist MSG_NOTIFY:I = 0x1


# instance fields
.field private final blacklist mListener:Lmiui/hardware/input/MiuiInputManager$MiuiShortcutSettingsListener;

.field private final blacklist mPackageName:Ljava/lang/String;

.field final synthetic blacklist this$0:Lmiui/hardware/input/MiuiInputManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmListener(Lmiui/hardware/input/MiuiInputManager$MiuiShortcutSettingsChangedDelegate;)Lmiui/hardware/input/MiuiInputManager$MiuiShortcutSettingsListener;
    .registers 1

    iget-object p0, p0, Lmiui/hardware/input/MiuiInputManager$MiuiShortcutSettingsChangedDelegate;->mListener:Lmiui/hardware/input/MiuiInputManager$MiuiShortcutSettingsListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPackageName(Lmiui/hardware/input/MiuiInputManager$MiuiShortcutSettingsChangedDelegate;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lmiui/hardware/input/MiuiInputManager$MiuiShortcutSettingsChangedDelegate;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method constructor blacklist <init>(Lmiui/hardware/input/MiuiInputManager;Lmiui/hardware/input/MiuiInputManager$MiuiShortcutSettingsListener;Landroid/os/Handler;Ljava/lang/String;)V
    .registers 6
    .param p1, "this$0"    # Lmiui/hardware/input/MiuiInputManager;
    .param p2, "listener"    # Lmiui/hardware/input/MiuiInputManager$MiuiShortcutSettingsListener;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "packageName"    # Ljava/lang/String;

    .line 814
    iput-object p1, p0, Lmiui/hardware/input/MiuiInputManager$MiuiShortcutSettingsChangedDelegate;->this$0:Lmiui/hardware/input/MiuiInputManager;

    .line 815
    if-nez p3, :cond_9

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_d

    :cond_9
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_d
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 816
    iput-object p2, p0, Lmiui/hardware/input/MiuiInputManager$MiuiShortcutSettingsChangedDelegate;->mListener:Lmiui/hardware/input/MiuiInputManager$MiuiShortcutSettingsListener;

    .line 817
    iput-object p4, p0, Lmiui/hardware/input/MiuiInputManager$MiuiShortcutSettingsChangedDelegate;->mPackageName:Ljava/lang/String;

    .line 818
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 829
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_22

    goto :goto_20

    .line 831
    :pswitch_6
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "function"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 832
    .local v0, "function":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "action"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 833
    .local v1, "action":Ljava/lang/String;
    iget-object v2, p0, Lmiui/hardware/input/MiuiInputManager$MiuiShortcutSettingsChangedDelegate;->mListener:Lmiui/hardware/input/MiuiInputManager$MiuiShortcutSettingsListener;

    invoke-interface {v2, v1, v0}, Lmiui/hardware/input/MiuiInputManager$MiuiShortcutSettingsListener;->onShortcutSettingsChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    nop

    .line 838
    .end local v0    # "function":Ljava/lang/String;
    .end local v1    # "action":Ljava/lang/String;
    :goto_20
    return-void

    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method

.method public blacklist isSupportAction(Ljava/lang/String;)Z
    .registers 4
    .param p1, "action"    # Ljava/lang/String;

    .line 821
    invoke-static {}, Lmiui/hardware/input/MiuiInputManager;->-$$Nest$sfgetsShortcutActionMap()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lmiui/hardware/input/MiuiInputManager$MiuiShortcutSettingsChangedDelegate;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 822
    invoke-static {}, Lmiui/hardware/input/MiuiInputManager;->-$$Nest$sfgetsShortcutActionMap()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lmiui/hardware/input/MiuiInputManager$MiuiShortcutSettingsChangedDelegate;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 824
    :cond_1d
    const/4 v0, 0x0

    return v0
.end method
