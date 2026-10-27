.class Lcom/android/server/bluetooth/BluetoothDeviceConfigListener$1;
.super Ljava/lang/Object;
.source "BluetoothDeviceConfigListener.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/bluetooth/BluetoothDeviceConfigListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/bluetooth/BluetoothDeviceConfigListener;


# direct methods
.method constructor <init>(Lcom/android/server/bluetooth/BluetoothDeviceConfigListener;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/bluetooth/BluetoothDeviceConfigListener;

    .line 49
    iput-object p1, p0, Lcom/android/server/bluetooth/BluetoothDeviceConfigListener$1;->this$0:Lcom/android/server/bluetooth/BluetoothDeviceConfigListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 7
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 52
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getNamespace()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bluetooth"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 53
    return-void

    .line 55
    :cond_d
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothDeviceConfigListener$1;->this$0:Lcom/android/server/bluetooth/BluetoothDeviceConfigListener;

    invoke-static {v0}, Lcom/android/server/bluetooth/BluetoothDeviceConfigListener;->-$$Nest$fgetmLogDebug(Lcom/android/server/bluetooth/BluetoothDeviceConfigListener;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v0, "flags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_55

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 58
    .local v2, "name":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {p1, v2, v4}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .end local v2    # "name":Ljava/lang/String;
    goto :goto_22

    .line 60
    :cond_55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPropertiesChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BluetoothDeviceConfigListener"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .end local v0    # "flags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_74
    const/4 v0, 0x0

    .line 63
    .local v0, "foundInit":Z
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_94

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 64
    .restart local v2    # "name":Ljava/lang/String;
    const-string v3, "INIT_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_93

    .line 65
    const/4 v0, 0x1

    .line 66
    goto :goto_94

    .line 68
    .end local v2    # "name":Ljava/lang/String;
    :cond_93
    goto :goto_7d

    .line 69
    :cond_94
    :goto_94
    if-nez v0, :cond_97

    .line 70
    return-void

    .line 72
    :cond_97
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothDeviceConfigListener$1;->this$0:Lcom/android/server/bluetooth/BluetoothDeviceConfigListener;

    invoke-static {v1}, Lcom/android/server/bluetooth/BluetoothDeviceConfigListener;->-$$Nest$fgetmService(Lcom/android/server/bluetooth/BluetoothDeviceConfigListener;)Lcom/android/server/bluetooth/BluetoothManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/bluetooth/BluetoothManagerService;->onInitFlagsChanged()V

    .line 73
    return-void
.end method
