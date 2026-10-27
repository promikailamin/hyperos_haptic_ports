.class public Lcom/android/server/hdmi/HdmiCecConfig$Setting;
.super Ljava/lang/Object;
.source "HdmiCecConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiCecConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Setting"
.end annotation


# instance fields
.field private mAllowedValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/hdmi/HdmiCecConfig$Value;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDefaultValue:Lcom/android/server/hdmi/HdmiCecConfig$Value;

.field private final mName:Ljava/lang/String;

.field private final mUserConfigurable:Z

.field final synthetic this$0:Lcom/android/server/hdmi/HdmiCecConfig;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecConfig;Landroid/content/Context;Ljava/lang/String;I)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/server/hdmi/HdmiCecConfig;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "userConfResId"    # I

    .line 215
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->this$0:Lcom/android/server/hdmi/HdmiCecConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->mDefaultValue:Lcom/android/server/hdmi/HdmiCecConfig$Value;

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->mAllowedValues:Ljava/util/List;

    .line 216
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->mContext:Landroid/content/Context;

    .line 217
    iput-object p3, p0, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->mName:Ljava/lang/String;

    .line 218
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->mUserConfigurable:Z

    .line 219
    return-void
.end method

.method private registerValue(Lcom/android/server/hdmi/HdmiCecConfig$Value;II)V
    .registers 6
    .param p1, "value"    # Lcom/android/server/hdmi/HdmiCecConfig$Value;
    .param p2, "allowedResId"    # I
    .param p3, "defaultResId"    # I

    .line 246
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 247
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->mAllowedValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 249
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->mDefaultValue:Lcom/android/server/hdmi/HdmiCecConfig$Value;

    if-eqz v0, :cond_5a

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to set \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' as a default for \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 251
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\': Setting already has a default (\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->mDefaultValue:Lcom/android/server/hdmi/HdmiCecConfig$Value;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 250
    const-string v1, "HdmiCecConfig"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    return-void

    .line 256
    :cond_5a
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->mDefaultValue:Lcom/android/server/hdmi/HdmiCecConfig$Value;

    .line 259
    :cond_5c
    return-void
.end method


# virtual methods
.method public getAllowedValues()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/hdmi/HdmiCecConfig$Value;",
            ">;"
        }
    .end annotation

    .line 273
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->mAllowedValues:Ljava/util/List;

    return-object v0
.end method

.method public getDefaultValue()Lcom/android/server/hdmi/HdmiCecConfig$Value;
    .registers 4

    .line 232
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->mDefaultValue:Lcom/android/server/hdmi/HdmiCecConfig$Value;

    if-eqz v0, :cond_5

    .line 237
    return-object v0

    .line 233
    :cond_5
    new-instance v0, Lcom/android/server/hdmi/HdmiCecConfig$VerificationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid CEC setup for \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 234
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' setting. Setting has no default value."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/hdmi/HdmiCecConfig$VerificationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 222
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserConfigurable()Z
    .registers 2

    .line 241
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->mUserConfigurable:Z

    return v0
.end method

.method public getValueType()Ljava/lang/String;
    .registers 2

    .line 226
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getDefaultValue()Lcom/android/server/hdmi/HdmiCecConfig$Value;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecConfig$Value;->getStringValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 227
    const-string/jumbo v0, "string"

    goto :goto_11

    .line 228
    :cond_e
    const-string/jumbo v0, "int"

    .line 226
    :goto_11
    return-object v0
.end method

.method public registerValue(III)V
    .registers 7
    .param p1, "value"    # I
    .param p2, "allowedResId"    # I
    .param p3, "defaultResId"    # I

    .line 268
    new-instance v0, Lcom/android/server/hdmi/HdmiCecConfig$Value;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->this$0:Lcom/android/server/hdmi/HdmiCecConfig;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecConfig$Value;-><init>(Lcom/android/server/hdmi/HdmiCecConfig;Ljava/lang/Integer;)V

    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(Lcom/android/server/hdmi/HdmiCecConfig$Value;II)V

    .line 269
    return-void
.end method

.method public registerValue(Ljava/lang/String;II)V
    .registers 6
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "allowedResId"    # I
    .param p3, "defaultResId"    # I

    .line 263
    new-instance v0, Lcom/android/server/hdmi/HdmiCecConfig$Value;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->this$0:Lcom/android/server/hdmi/HdmiCecConfig;

    invoke-direct {v0, v1, p1}, Lcom/android/server/hdmi/HdmiCecConfig$Value;-><init>(Lcom/android/server/hdmi/HdmiCecConfig;Ljava/lang/String;)V

    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(Lcom/android/server/hdmi/HdmiCecConfig$Value;II)V

    .line 264
    return-void
.end method
