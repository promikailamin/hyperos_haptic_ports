.class Landroid/hardware/hdmi/HdmiControlManager$4;
.super Landroid/hardware/hdmi/IHdmiCecSettingChangeListener$Stub;
.source "HdmiControlManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/hdmi/HdmiControlManager;->getCecSettingChangeListenerWrapper(Ljava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiControlManager$CecSettingChangeListener;)Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist val$listener:Landroid/hardware/hdmi/HdmiControlManager$CecSettingChangeListener;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/hdmi/HdmiControlManager;Ljava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiControlManager$CecSettingChangeListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 2123
    iput-object p2, p0, Landroid/hardware/hdmi/HdmiControlManager$4;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/hardware/hdmi/HdmiControlManager$4;->val$listener:Landroid/hardware/hdmi/HdmiControlManager$CecSettingChangeListener;

    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiCecSettingChangeListener$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onChange$0(Landroid/hardware/hdmi/HdmiControlManager$CecSettingChangeListener;Ljava/lang/String;)V
    .registers 2

    .line 2128
    invoke-interface {p0, p1}, Landroid/hardware/hdmi/HdmiControlManager$CecSettingChangeListener;->onChange(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist onChange(Ljava/lang/String;)V
    .registers 7

    .line 2126
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2128
    :try_start_4
    iget-object v2, p0, Landroid/hardware/hdmi/HdmiControlManager$4;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/hardware/hdmi/HdmiControlManager$4;->val$listener:Landroid/hardware/hdmi/HdmiControlManager$CecSettingChangeListener;

    new-instance v4, Landroid/hardware/hdmi/HdmiControlManager$4$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3, p1}, Landroid/hardware/hdmi/HdmiControlManager$4$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/hdmi/HdmiControlManager$CecSettingChangeListener;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_15

    .line 2130
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2131
    nop

    .line 2132
    return-void

    .line 2130
    :catchall_15
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2131
    throw p1
.end method
