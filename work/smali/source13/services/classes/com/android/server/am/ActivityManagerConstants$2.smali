.class Lcom/android/server/am/ActivityManagerConstants$2;
.super Ljava/lang/Object;
.source "ActivityManagerConstants.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerConstants;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerConstants;

    .line 1041
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerConstants$2;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 6
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 1044
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1045
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_17

    .line 1046
    return-void

    .line 1048
    :cond_17
    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_40

    :cond_1f
    goto :goto_33

    :sswitch_20
    const-string v3, "component_alias_overrides"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/4 v2, 0x1

    goto :goto_33

    :sswitch_2a
    const-string v3, "enable_experimental_component_alias"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/4 v2, 0x0

    :goto_33
    packed-switch v2, :pswitch_data_4a

    goto :goto_3d

    .line 1051
    :pswitch_37
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants$2;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateComponentAliases(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 1052
    nop

    .line 1056
    .end local v1    # "name":Ljava/lang/String;
    :goto_3d
    goto :goto_8

    .line 1057
    :cond_3e
    return-void

    nop

    :sswitch_data_40
    .sparse-switch
        -0x5bef5f8d -> :sswitch_2a
        0x20e423b6 -> :sswitch_20
    .end sparse-switch

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_37
        :pswitch_37
    .end packed-switch
.end method
