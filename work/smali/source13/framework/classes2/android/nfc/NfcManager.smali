.class public final Landroid/nfc/NfcManager;
.super Ljava/lang/Object;
.source "NfcManager.java"


# instance fields
.field private greylist-max-o mAdapter:Landroid/nfc/NfcAdapter;

.field private blacklist mContext:Landroid/content/Context;


# direct methods
.method public constructor greylist-max-p <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/nfc/NfcManager;->mContext:Landroid/content/Context;

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 54
    if-eqz p1, :cond_19

    .line 59
    :try_start_c
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getNfcAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0
    :try_end_10
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_c .. :try_end_10} :catch_11

    .line 62
    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    goto :goto_14

    .line 60
    .end local v0    # "adapter":Landroid/nfc/NfcAdapter;
    :catch_11
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    const/4 v1, 0x0

    move-object v0, v1

    .line 63
    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    :goto_14
    iput-object v0, p0, Landroid/nfc/NfcManager;->mAdapter:Landroid/nfc/NfcAdapter;

    .line 64
    iput-object p1, p0, Landroid/nfc/NfcManager;->mContext:Landroid/content/Context;

    .line 65
    return-void

    .line 55
    .end local v0    # "adapter":Landroid/nfc/NfcAdapter;
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context not associated with any application (using a mock context?)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist getDefaultAdapter()Landroid/nfc/NfcAdapter;
    .registers 3

    .line 73
    iget-object v0, p0, Landroid/nfc/NfcManager;->mAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_17

    .line 74
    const-string v0, "getDefaultAdapter"

    const-string v1, "Try get adapter again"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :try_start_b
    iget-object v0, p0, Landroid/nfc/NfcManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getNfcAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0
    :try_end_11
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_b .. :try_end_11} :catch_12

    .line 80
    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    goto :goto_15

    .line 78
    .end local v0    # "adapter":Landroid/nfc/NfcAdapter;
    :catch_12
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    const/4 v1, 0x0

    move-object v0, v1

    .line 81
    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    :goto_15
    iput-object v0, p0, Landroid/nfc/NfcManager;->mAdapter:Landroid/nfc/NfcAdapter;

    .line 83
    .end local v0    # "adapter":Landroid/nfc/NfcAdapter;
    :cond_17
    iget-object v0, p0, Landroid/nfc/NfcManager;->mAdapter:Landroid/nfc/NfcAdapter;

    return-object v0
.end method
