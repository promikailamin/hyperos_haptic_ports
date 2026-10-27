.class public final Lcom/android/server/inputmethod/SecureSettingsWrapper$LockedUserImpl;
.super Lcom/android/server/inputmethod/SecureSettingsWrapper$UnlockedUserImpl;
.source "SecureSettingsWrapper.java"


# instance fields
.field public final mNonPersistentKeyValues:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>(ILandroid/content/ContentResolver;)V
    .registers 3

    .line 207
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/SecureSettingsWrapper$UnlockedUserImpl;-><init>(ILandroid/content/ContentResolver;)V

    .line 203
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$LockedUserImpl;->mNonPersistentKeyValues:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public getInt(Ljava/lang/String;I)I
    .registers 5

    .line 242
    iget-object v0, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$LockedUserImpl;->mNonPersistentKeyValues:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 243
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$LockedUserImpl;->mNonPersistentKeyValues:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 244
    iget-object p0, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$LockedUserImpl;->mNonPersistentKeyValues:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_1c

    .line 245
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_1c

    :catchall_1a
    move-exception p0

    goto :goto_24

    :cond_1c
    :goto_1c
    monitor-exit v0

    return p2

    .line 247
    :cond_1e
    invoke-super {p0, p1, p2}, Lcom/android/server/inputmethod/SecureSettingsWrapper$UnlockedUserImpl;->getInt(Ljava/lang/String;I)I

    move-result p0

    monitor-exit v0

    return p0

    .line 248
    :goto_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_1a

    throw p0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 222
    iget-object v0, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$LockedUserImpl;->mNonPersistentKeyValues:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 223
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$LockedUserImpl;->mNonPersistentKeyValues:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 224
    iget-object p0, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$LockedUserImpl;->mNonPersistentKeyValues:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_16

    move-object p2, p0

    .line 225
    :cond_16
    monitor-exit v0

    return-object p2

    :catchall_18
    move-exception p0

    goto :goto_20

    .line 227
    :cond_1a
    invoke-super {p0, p1, p2}, Lcom/android/server/inputmethod/SecureSettingsWrapper$UnlockedUserImpl;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 228
    :goto_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_18

    throw p0
.end method

.method public putInt(Ljava/lang/String;I)V
    .registers 4

    .line 234
    iget-object v0, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$LockedUserImpl;->mNonPersistentKeyValues:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 235
    :try_start_3
    iget-object p0, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$LockedUserImpl;->mNonPersistentKeyValues:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 213
    iget-object v0, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$LockedUserImpl;->mNonPersistentKeyValues:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 214
    :try_start_3
    iget-object p0, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$LockedUserImpl;->mNonPersistentKeyValues:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method
