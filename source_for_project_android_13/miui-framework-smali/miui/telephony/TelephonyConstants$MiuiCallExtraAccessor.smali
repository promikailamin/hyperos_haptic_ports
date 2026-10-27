.class public Lmiui/telephony/TelephonyConstants$MiuiCallExtraAccessor;
.super Ljava/lang/Object;
.source "TelephonyConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/TelephonyConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MiuiCallExtraAccessor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/telephony/TelephonyConstants$MiuiCallExtraAccessor$ExtraContainer;
    }
.end annotation


# instance fields
.field private blacklist mBundle:Landroid/os/Bundle;

.field private final blacklist mCall:Lmiui/telephony/TelephonyConstants$MiuiCallExtraAccessor$ExtraContainer;


# direct methods
.method public constructor blacklist <init>(Lmiui/telephony/TelephonyConstants$MiuiCallExtraAccessor$ExtraContainer;)V
    .registers 4
    .param p1, "call"    # Lmiui/telephony/TelephonyConstants$MiuiCallExtraAccessor$ExtraContainer;

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    iput-object p1, p0, Lmiui/telephony/TelephonyConstants$MiuiCallExtraAccessor;->mCall:Lmiui/telephony/TelephonyConstants$MiuiCallExtraAccessor$ExtraContainer;

    .line 222
    invoke-interface {p1}, Lmiui/telephony/TelephonyConstants$MiuiCallExtraAccessor$ExtraContainer;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 223
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_13

    .line 224
    const-string v1, "com.miui.phone.CALL_EXTRAS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lmiui/telephony/TelephonyConstants$MiuiCallExtraAccessor;->mBundle:Landroid/os/Bundle;

    .line 226
    :cond_13
    return-void
.end method


# virtual methods
.method public blacklist commit()V
    .registers 5

    .line 296
    iget-object v0, p0, Lmiui/telephony/TelephonyConstants$MiuiCallExtraAccessor;->mCall:Lmiui/telephony/TelephonyConstants$MiuiCallExtraAccessor$ExtraContainer;

    invoke-interface {v0}, Lmiui/telephony/TelephonyConstants$MiuiCallExtraAccessor$ExtraContainer;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 297
    .local v0, "extras":Landroid/os/Bundle;
    iget-object v1, p0, Lmiui/telephony/TelephonyConstants$MiuiCallExtraAccessor;->mBundle:Landroid/os/Bundle;

    const-string v2, "com.miui.phone.CALL_EXTRAS"

    if-eqz v1, :cond_35

    invoke-virtual {v1}, Landroid/os/Bundle;->size()I

    move-result v1

    if-nez v1, :cond_13

    goto :goto_35

    .line 302
    :cond_13
    if-nez v0, :cond_21

    .line 303
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v0, v1

    .line 304
    iget-object v1, p0, Lmiui/telephony/TelephonyConstants$MiuiCallExtraAccessor;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_3a

    .line 306
    :cond_21
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 307
    .local v1, "e":Landroid/os/Bundle;
    if-nez v1, :cond_2d

    .line 308
    iget-object v3, p0, Lmiui/telephony/TelephonyConstants$MiuiCallExtraAccessor;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_3a

    .line 309
    :cond_2d
    iget-object v2, p0, Lmiui/telephony/TelephonyConstants$MiuiCallExtraAccessor;->mBundle:Landroid/os/Bundle;

    if-eq v1, v2, :cond_3a

    .line 310
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_3a

    .line 298
    .end local v1    # "e":Landroid/os/Bundle;
    :cond_35
    :goto_35
    if-eqz v0, :cond_3a

    .line 299
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 315
    :cond_3a
    :goto_3a
    iget-object v1, p0, Lmiui/telephony/TelephonyConstants$MiuiCallExtraAccessor;->mCall:Lmiui/telephony/TelephonyConstants$MiuiCallExtraAccessor$ExtraContainer;

    invoke-interface {v1, v0}, Lmiui/telephony/TelephonyConstants$MiuiCallExtraAccessor$ExtraContainer;->setExtras(Landroid/os/Bundle;)V

    .line 316
    return-void
.end method

.method public blacklist getBoolean(Ljava/lang/String;Z)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 229
    iget-object v0, p0, Lmiui/telephony/TelephonyConstants$MiuiCallExtraAccessor;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_5

    .line 230
    return p2

    .line 232
    :cond_5
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public blacklist getInt(Ljava/lang/String;I)I
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 236
    iget-object v0, p0, Lmiui/telephony/TelephonyConstants$MiuiCallExtraAccessor;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_5

    .line 237
    return p2

    .line 239
    :cond_5
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public blacklist getLong(Ljava/lang/String;J)J
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .line 243
    iget-object v0, p0, Lmiui/telephony/TelephonyConstants$MiuiCallExtraAccessor;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_5

    .line 244
    return-wide p2

    .line 246
    :cond_5
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 250
    iget-object v0, p0, Lmiui/telephony/TelephonyConstants$MiuiCallExtraAccessor;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_5

    .line 251
    return-object p2

    .line 253
    :cond_5
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist putBoolean(Ljava/lang/String;Z)Lmiui/telephony/TelephonyConstants$MiuiCallExtraAccessor;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 257
    iget-object v0, p0, Lmiui/telephony/TelephonyConstants$MiuiCallExtraAccessor;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 258
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lmiui/telephony/TelephonyConstants$MiuiCallExtraAccessor;->mBundle:Landroid/os/Bundle;

    .line 260
    :cond_b
    iget-object v0, p0, Lmiui/telephony/TelephonyConstants$MiuiCallExtraAccessor;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 261
    return-object p0
.end method

.method public blacklist putInt(Ljava/lang/String;I)Lmiui/telephony/TelephonyConstants$MiuiCallExtraAccessor;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 265
    iget-object v0, p0, Lmiui/telephony/TelephonyConstants$MiuiCallExtraAccessor;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 266
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lmiui/telephony/TelephonyConstants$MiuiCallExtraAccessor;->mBundle:Landroid/os/Bundle;

    .line 268
    :cond_b
    iget-object v0, p0, Lmiui/telephony/TelephonyConstants$MiuiCallExtraAccessor;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 269
    return-object p0
.end method

.method public blacklist putLong(Ljava/lang/String;J)Lmiui/telephony/TelephonyConstants$MiuiCallExtraAccessor;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 273
    iget-object v0, p0, Lmiui/telephony/TelephonyConstants$MiuiCallExtraAccessor;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 274
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lmiui/telephony/TelephonyConstants$MiuiCallExtraAccessor;->mBundle:Landroid/os/Bundle;

    .line 276
    :cond_b
    iget-object v0, p0, Lmiui/telephony/TelephonyConstants$MiuiCallExtraAccessor;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 277
    return-object p0
.end method

.method public blacklist putString(Ljava/lang/String;Ljava/lang/String;)Lmiui/telephony/TelephonyConstants$MiuiCallExtraAccessor;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 281
    iget-object v0, p0, Lmiui/telephony/TelephonyConstants$MiuiCallExtraAccessor;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 282
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lmiui/telephony/TelephonyConstants$MiuiCallExtraAccessor;->mBundle:Landroid/os/Bundle;

    .line 284
    :cond_b
    iget-object v0, p0, Lmiui/telephony/TelephonyConstants$MiuiCallExtraAccessor;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    return-object p0
.end method

.method public blacklist remove(Ljava/lang/String;)Lmiui/telephony/TelephonyConstants$MiuiCallExtraAccessor;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 289
    iget-object v0, p0, Lmiui/telephony/TelephonyConstants$MiuiCallExtraAccessor;->mBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_7

    .line 290
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 292
    :cond_7
    return-object p0
.end method
