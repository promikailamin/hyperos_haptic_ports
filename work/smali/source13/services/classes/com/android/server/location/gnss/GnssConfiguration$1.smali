.class Lcom/android/server/location/gnss/GnssConfiguration$1;
.super Ljava/util/HashMap;
.source "GnssConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/gnss/GnssConfiguration;->reloadGpsProperties()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Lcom/android/server/location/gnss/GnssConfiguration$SetCarrierProperty;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/gnss/GnssConfiguration;

.field final synthetic val$gnssConfigurationIfaceVersion:Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;


# direct methods
.method constructor <init>(Lcom/android/server/location/gnss/GnssConfiguration;Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/location/gnss/GnssConfiguration;

    .line 274
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssConfiguration$1;->this$0:Lcom/android/server/location/gnss/GnssConfiguration;

    iput-object p2, p0, Lcom/android/server/location/gnss/GnssConfiguration$1;->val$gnssConfigurationIfaceVersion:Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 276
    new-instance v0, Lcom/android/server/location/gnss/GnssConfiguration$1$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/location/gnss/GnssConfiguration$1$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "SUPL_VER"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/location/gnss/GnssConfiguration$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    new-instance v0, Lcom/android/server/location/gnss/GnssConfiguration$1$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/location/gnss/GnssConfiguration$1$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "SUPL_MODE"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/location/gnss/GnssConfiguration$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    invoke-static {p2}, Lcom/android/server/location/gnss/GnssConfiguration;->-$$Nest$smisConfigSuplEsSupported(Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 280
    new-instance v0, Lcom/android/server/location/gnss/GnssConfiguration$1$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/location/gnss/GnssConfiguration$1$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "SUPL_ES"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/location/gnss/GnssConfiguration$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    :cond_2b
    new-instance v0, Lcom/android/server/location/gnss/GnssConfiguration$1$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/location/gnss/GnssConfiguration$1$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "LPP_PROFILE"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/location/gnss/GnssConfiguration$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    new-instance v0, Lcom/android/server/location/gnss/GnssConfiguration$1$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/server/location/gnss/GnssConfiguration$1$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "A_GLONASS_POS_PROTOCOL_SELECT"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/location/gnss/GnssConfiguration$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    new-instance v0, Lcom/android/server/location/gnss/GnssConfiguration$1$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/server/location/gnss/GnssConfiguration$1$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "USE_EMERGENCY_PDN_FOR_EMERGENCY_SUPL"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/location/gnss/GnssConfiguration$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    invoke-static {p2}, Lcom/android/server/location/gnss/GnssConfiguration;->-$$Nest$smisConfigGpsLockSupported(Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;)Z

    move-result p2

    if-eqz p2, :cond_59

    .line 290
    new-instance p2, Lcom/android/server/location/gnss/GnssConfiguration$1$$ExternalSyntheticLambda6;

    invoke-direct {p2}, Lcom/android/server/location/gnss/GnssConfiguration$1$$ExternalSyntheticLambda6;-><init>()V

    const-string v0, "GPS_LOCK"

    invoke-virtual {p0, v0, p2}, Lcom/android/server/location/gnss/GnssConfiguration$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    :cond_59
    return-void
.end method

.method static synthetic lambda$new$0(I)Z
    .registers 2
    .param p0, "x$0"    # I

    .line 276
    invoke-static {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->-$$Nest$smnative_set_supl_version(I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$new$1(I)Z
    .registers 2
    .param p0, "x$0"    # I

    .line 277
    invoke-static {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->-$$Nest$smnative_set_supl_mode(I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$new$2(I)Z
    .registers 2
    .param p0, "x$0"    # I

    .line 280
    invoke-static {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->-$$Nest$smnative_set_supl_es(I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$new$3(I)Z
    .registers 2
    .param p0, "x$0"    # I

    .line 283
    invoke-static {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->-$$Nest$smnative_set_lpp_profile(I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$new$4(I)Z
    .registers 2
    .param p0, "x$0"    # I

    .line 285
    invoke-static {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->-$$Nest$smnative_set_gnss_pos_protocol_select(I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$new$5(I)Z
    .registers 2
    .param p0, "x$0"    # I

    .line 287
    invoke-static {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->-$$Nest$smnative_set_emergency_supl_pdn(I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$new$6(I)Z
    .registers 2
    .param p0, "x$0"    # I

    .line 290
    invoke-static {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->-$$Nest$smnative_set_gps_lock(I)Z

    move-result v0

    return v0
.end method
