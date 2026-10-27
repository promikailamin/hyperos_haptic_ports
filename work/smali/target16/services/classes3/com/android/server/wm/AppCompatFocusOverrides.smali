.class public Lcom/android/server/wm/AppCompatFocusOverrides;
.super Ljava/lang/Object;
.source "AppCompatFocusOverrides.java"


# instance fields
.field public final mActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public final mFakeFocusOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatConfiguration;Lcom/android/server/wm/utils/OptPropFactory;)V
    .registers 4

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/server/wm/AppCompatFocusOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 45
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/android/server/wm/AppCompatFocusOverrides$$ExternalSyntheticLambda0;

    invoke-direct {p1, p2}, Lcom/android/server/wm/AppCompatFocusOverrides$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/AppCompatConfiguration;)V

    .line 44
    const-string p2, "android.window.PROPERTY_COMPAT_ENABLE_FAKE_FOCUS"

    invoke-virtual {p3, p2, p1}, Lcom/android/server/wm/utils/OptPropFactory;->create(Ljava/lang/String;Ljava/util/function/BooleanSupplier;)Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/AppCompatFocusOverrides;->mFakeFocusOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    return-void
.end method


# virtual methods
.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;)V
    .registers 4

    const-wide v0, 0x10800000026L

    .line 71
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatFocusOverrides;->shouldSendFakeFocus()Z

    move-result p0

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    return-void
.end method

.method public shouldSendFakeFocus()Z
    .registers 5

    .line 64
    iget-object v0, p0, Lcom/android/server/wm/AppCompatFocusOverrides;->mFakeFocusOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    iget-object v1, p0, Lcom/android/server/wm/AppCompatFocusOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const-wide/32 v2, 0xfb1048b

    .line 65
    invoke-static {v1, v2, v3}, Lcom/android/server/wm/AppCompatUtils;->isChangeEnabled(Lcom/android/server/wm/ActivityRecord;J)Z

    move-result v1

    .line 64
    invoke-virtual {v0, v1}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->shouldEnableWithOverrideAndProperty(Z)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/server/wm/AppCompatFocusOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 66
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/server/wm/AppCompatFocusOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object p0, p0, Lcom/android/server/wm/AppCompatFocusOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 67
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result p0

    if-nez p0, :cond_2b

    const/4 p0, 0x1

    return p0

    :cond_2b
    const/4 p0, 0x0

    return p0
.end method
