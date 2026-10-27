.class public Landroid/telephony/MiuiSignalStrengthImpl;
.super Ljava/lang/Object;
.source "MiuiSignalStrengthImpl.java"

# interfaces
.implements Landroid/telephony/IMiuiSignalStrength;


# static fields
.field public static final blacklist MIUI_NUM_SIGNAL_STRENGTH_BINS:I = 0x6

.field public static final blacklist MIUI_SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

.field public static final blacklist SIGNAL_STRENGTH_EXCELLENT:I = 0x5


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 6

    .line 49
    const-string v0, "none"

    const-string v1, "poor"

    const-string v2, "moderate"

    const-string v3, "good"

    const-string v4, "great"

    const-string v5, "excellent"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/MiuiSignalStrengthImpl;->MIUI_SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist shouldOptimizeSignalStrength()Z
    .registers 4

    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, "shouldOptimizeSS":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 58
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getSimCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "IN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 59
    const/4 v0, 0x1

    .line 60
    goto :goto_20

    .line 57
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 63
    .end local v1    # "i":I
    :cond_20
    :goto_20
    return v0
.end method


# virtual methods
.method public blacklist updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;Landroid/telephony/CellSignalStrength;)I
    .registers 13
    .param p1, "cc"    # Landroid/os/PersistableBundle;
    .param p2, "ss"    # Landroid/telephony/ServiceState;
    .param p3, "css"    # Landroid/telephony/CellSignalStrength;

    .line 67
    const/4 v0, 0x0

    .line 69
    .local v0, "miuiLevel":I
    if-eqz p1, :cond_92

    if-eqz p2, :cond_92

    if-nez p3, :cond_9

    goto/16 :goto_92

    .line 73
    :cond_9
    instance-of v1, p3, Landroid/telephony/CellSignalStrengthCdma;

    if-eqz v1, :cond_2c

    .line 75
    move-object v1, p3

    check-cast v1, Landroid/telephony/CellSignalStrengthCdma;

    .line 76
    .local v1, "cdma":Landroid/telephony/CellSignalStrengthCdma;
    nop

    .line 77
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaDbm()I

    move-result v4

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaEcio()I

    move-result v5

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoDbm()I

    move-result v6

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoEcio()I

    move-result v7

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoSnr()I

    move-result v8

    .line 76
    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v2 .. v8}, Landroid/telephony/MiuiCellSignalStrengthCdma;->updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;IIIII)I

    move-result v0

    .line 78
    .end local v1    # "cdma":Landroid/telephony/CellSignalStrengthCdma;
    goto :goto_91

    :cond_2c
    instance-of v1, p3, Landroid/telephony/CellSignalStrengthGsm;

    if-eqz v1, :cond_3c

    .line 80
    move-object v1, p3

    check-cast v1, Landroid/telephony/CellSignalStrengthGsm;

    .line 81
    .local v1, "gsm":Landroid/telephony/CellSignalStrengthGsm;
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthGsm;->getRssi()I

    move-result v2

    invoke-static {p1, p2, v2}, Landroid/telephony/MiuiCellSignalStrengthGsm;->updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;I)I

    move-result v0

    .line 82
    .end local v1    # "gsm":Landroid/telephony/CellSignalStrengthGsm;
    goto :goto_91

    :cond_3c
    instance-of v1, p3, Landroid/telephony/CellSignalStrengthLte;

    if-eqz v1, :cond_54

    .line 84
    move-object v1, p3

    check-cast v1, Landroid/telephony/CellSignalStrengthLte;

    .line 86
    .local v1, "lte":Landroid/telephony/CellSignalStrengthLte;
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthLte;->getRsrp()I

    move-result v2

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthLte;->getRssi()I

    move-result v3

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthLte;->getRssnr()I

    move-result v4

    invoke-static {p1, p2, v2, v3, v4}, Landroid/telephony/MiuiCellSignalStrengthLte;->updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;III)I

    move-result v0

    .line 88
    .end local v1    # "lte":Landroid/telephony/CellSignalStrengthLte;
    goto :goto_91

    :cond_54
    instance-of v1, p3, Landroid/telephony/CellSignalStrengthNr;

    if-eqz v1, :cond_68

    .line 90
    move-object v1, p3

    check-cast v1, Landroid/telephony/CellSignalStrengthNr;

    .line 92
    .local v1, "nr":Landroid/telephony/CellSignalStrengthNr;
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthNr;->getSsRsrp()I

    move-result v2

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthNr;->getSsSinr()I

    move-result v3

    invoke-static {p1, p2, v2, v3}, Landroid/telephony/MiuiCellSignalStrengthNr;->updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;II)I

    move-result v0

    .line 94
    .end local v1    # "nr":Landroid/telephony/CellSignalStrengthNr;
    goto :goto_91

    :cond_68
    instance-of v1, p3, Landroid/telephony/CellSignalStrengthWcdma;

    if-eqz v1, :cond_7c

    .line 96
    move-object v1, p3

    check-cast v1, Landroid/telephony/CellSignalStrengthWcdma;

    .line 97
    .local v1, "wcdma":Landroid/telephony/CellSignalStrengthWcdma;
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthWcdma;->getRssi()I

    move-result v2

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthWcdma;->getRscp()I

    move-result v3

    invoke-static {p1, p2, v2, v3}, Landroid/telephony/MiuiCellSignalStrengthWcdma;->updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;II)I

    move-result v0

    .end local v1    # "wcdma":Landroid/telephony/CellSignalStrengthWcdma;
    goto :goto_90

    .line 98
    :cond_7c
    instance-of v1, p3, Landroid/telephony/CellSignalStrengthTdscdma;

    if-eqz v1, :cond_90

    .line 100
    move-object v1, p3

    check-cast v1, Landroid/telephony/CellSignalStrengthTdscdma;

    .line 101
    .local v1, "tdscdma":Landroid/telephony/CellSignalStrengthTdscdma;
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthTdscdma;->getRssi()I

    move-result v2

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthTdscdma;->getRscp()I

    move-result v3

    invoke-static {p1, p2, v2, v3}, Landroid/telephony/MiuiCellSignalStrengthTdscdma;->updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;II)I

    move-result v0

    goto :goto_91

    .line 98
    .end local v1    # "tdscdma":Landroid/telephony/CellSignalStrengthTdscdma;
    :cond_90
    :goto_90
    nop

    .line 103
    :goto_91
    return v0

    .line 70
    :cond_92
    :goto_92
    return v0
.end method
