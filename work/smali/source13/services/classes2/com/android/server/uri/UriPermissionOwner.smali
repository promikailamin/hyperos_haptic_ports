.class public Lcom/android/server/uri/UriPermissionOwner;
.super Ljava/lang/Object;
.source "UriPermissionOwner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/uri/UriPermissionOwner$ExternalToken;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UriPermissionOwner"


# instance fields
.field private externalToken:Landroid/os/Binder;

.field private final mOwner:Ljava/lang/Object;

.field private mReadPerms:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/uri/UriPermission;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/uri/UriGrantsManagerInternal;

.field private mWritePerms:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/uri/UriPermission;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/uri/UriGrantsManagerInternal;Ljava/lang/Object;)V
    .registers 3
    .param p1, "service"    # Lcom/android/server/uri/UriGrantsManagerInternal;
    .param p2, "owner"    # Ljava/lang/Object;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/server/uri/UriPermissionOwner;->mService:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 58
    iput-object p2, p0, Lcom/android/server/uri/UriPermissionOwner;->mOwner:Ljava/lang/Object;

    .line 59
    return-void
.end method

.method static fromExternalToken(Landroid/os/IBinder;)Lcom/android/server/uri/UriPermissionOwner;
    .registers 2
    .param p0, "token"    # Landroid/os/IBinder;

    .line 69
    instance-of v0, p0, Lcom/android/server/uri/UriPermissionOwner$ExternalToken;

    if-eqz v0, :cond_c

    .line 70
    move-object v0, p0

    check-cast v0, Lcom/android/server/uri/UriPermissionOwner$ExternalToken;

    invoke-virtual {v0}, Lcom/android/server/uri/UriPermissionOwner$ExternalToken;->getOwner()Lcom/android/server/uri/UriPermissionOwner;

    move-result-object v0

    return-object v0

    .line 72
    :cond_c
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public addReadPermission(Lcom/android/server/uri/UriPermission;)V
    .registers 3
    .param p1, "perm"    # Lcom/android/server/uri/UriPermission;

    .line 143
    monitor-enter p0

    .line 144
    :try_start_1
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    if-nez v0, :cond_b

    .line 145
    invoke-static {}, Lcom/google/android/collect/Sets;->newArraySet()Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    .line 147
    :cond_b
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 148
    monitor-exit p0

    .line 149
    return-void

    .line 148
    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public addWritePermission(Lcom/android/server/uri/UriPermission;)V
    .registers 3
    .param p1, "perm"    # Lcom/android/server/uri/UriPermission;

    .line 152
    monitor-enter p0

    .line 153
    :try_start_1
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    if-nez v0, :cond_b

    .line 154
    invoke-static {}, Lcom/google/android/collect/Sets;->newArraySet()Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    .line 156
    :cond_b
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 157
    monitor-exit p0

    .line 158
    return-void

    .line 157
    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 191
    monitor-enter p0

    .line 192
    :try_start_1
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    if-eqz v0, :cond_13

    .line 193
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 194
    const-string/jumbo v0, "readUriPermissions="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 197
    :cond_13
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    if-eqz v0, :cond_25

    .line 198
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 199
    const-string/jumbo v0, "writeUriPermissions="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 202
    :cond_25
    monitor-exit p0

    .line 203
    return-void

    .line 202
    :catchall_27
    move-exception v0

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_27

    throw v0
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 11
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 206
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 207
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/uri/UriPermissionOwner;->mOwner:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 208
    monitor-enter p0

    .line 209
    :try_start_13
    iget-object v2, p0, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    if-eqz v2, :cond_32

    .line 210
    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/uri/UriPermission;

    .line 211
    .local v3, "p":Lcom/android/server/uri/UriPermission;
    iget-object v4, v3, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    const-wide v5, 0x20b00000002L

    invoke-virtual {v4, p1, v5, v6}, Lcom/android/server/uri/GrantUri;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 212
    .end local v3    # "p":Lcom/android/server/uri/UriPermission;
    goto :goto_1b

    .line 214
    :cond_32
    iget-object v2, p0, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    if-eqz v2, :cond_51

    .line 215
    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_51

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/uri/UriPermission;

    .line 216
    .restart local v3    # "p":Lcom/android/server/uri/UriPermission;
    iget-object v4, v3, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    const-wide v5, 0x20b00000003L

    invoke-virtual {v4, p1, v5, v6}, Lcom/android/server/uri/GrantUri;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 217
    .end local v3    # "p":Lcom/android/server/uri/UriPermission;
    goto :goto_3a

    .line 219
    :cond_51
    monitor-exit p0
    :try_end_52
    .catchall {:try_start_13 .. :try_end_52} :catchall_56

    .line 220
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 221
    return-void

    .line 219
    :catchall_56
    move-exception v2

    :try_start_57
    monitor-exit p0
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    throw v2
.end method

.method public getExternalToken()Landroid/os/Binder;
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->externalToken:Landroid/os/Binder;

    if-nez v0, :cond_b

    .line 63
    new-instance v0, Lcom/android/server/uri/UriPermissionOwner$ExternalToken;

    invoke-direct {v0, p0}, Lcom/android/server/uri/UriPermissionOwner$ExternalToken;-><init>(Lcom/android/server/uri/UriPermissionOwner;)V

    iput-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->externalToken:Landroid/os/Binder;

    .line 65
    :cond_b
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->externalToken:Landroid/os/Binder;

    return-object v0
.end method

.method public removeReadPermission(Lcom/android/server/uri/UriPermission;)V
    .registers 4
    .param p1, "perm"    # Lcom/android/server/uri/UriPermission;

    .line 161
    monitor-enter p0

    .line 163
    :try_start_1
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    if-nez v0, :cond_f

    .line 164
    const-string v0, "UriPermissionOwner"

    const-string/jumbo v1, "mReadPerms is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    monitor-exit p0

    return-void

    .line 168
    :cond_f
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 169
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    .line 172
    :cond_1d
    monitor-exit p0

    .line 173
    return-void

    .line 172
    :catchall_1f
    move-exception v0

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method removeUriPermission(Lcom/android/server/uri/GrantUri;I)V
    .registers 5
    .param p1, "grantUri"    # Lcom/android/server/uri/GrantUri;
    .param p2, "mode"    # I

    .line 84
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/uri/UriPermissionOwner;->removeUriPermission(Lcom/android/server/uri/GrantUri;ILjava/lang/String;I)V

    .line 85
    return-void
.end method

.method removeUriPermission(Lcom/android/server/uri/GrantUri;ILjava/lang/String;I)V
    .registers 11
    .param p1, "grantUri"    # Lcom/android/server/uri/GrantUri;
    .param p2, "mode"    # I
    .param p3, "targetPgk"    # Ljava/lang/String;
    .param p4, "targetUserId"    # I

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v0, "permissionsToRemove":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/uri/UriPermission;>;"
    monitor-enter p0

    .line 91
    and-int/lit8 v1, p2, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_54

    :try_start_c
    iget-object v1, p0, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    if-eqz v1, :cond_54

    .line 92
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 93
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/uri/UriPermission;>;"
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_47

    .line 94
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/uri/UriPermission;

    .line 95
    .local v4, "perm":Lcom/android/server/uri/UriPermission;
    if-eqz p1, :cond_2b

    iget-object v5, v4, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    invoke-virtual {p1, v5}, Lcom/android/server/uri/GrantUri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2b

    .line 96
    goto :goto_14

    .line 98
    :cond_2b
    if-eqz p3, :cond_36

    iget-object v5, v4, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_36

    .line 99
    goto :goto_14

    .line 101
    :cond_36
    if-eq p4, v2, :cond_3d

    iget v5, v4, Lcom/android/server/uri/UriPermission;->targetUserId:I

    if-eq p4, v5, :cond_3d

    .line 102
    goto :goto_14

    .line 104
    :cond_3d
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-virtual {v4, p0}, Lcom/android/server/uri/UriPermission;->removeReadOwner(Lcom/android/server/uri/UriPermissionOwner;)V

    .line 106
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 107
    .end local v4    # "perm":Lcom/android/server/uri/UriPermission;
    goto :goto_14

    .line 108
    :cond_47
    iget-object v4, p0, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_54

    .line 109
    iput-object v3, p0, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    goto :goto_54

    .line 134
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/uri/UriPermission;>;"
    :catchall_52
    move-exception v1

    goto :goto_b4

    .line 113
    :cond_54
    :goto_54
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_9d

    iget-object v1, p0, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    if-eqz v1, :cond_9d

    .line 114
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 115
    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/uri/UriPermission;>;"
    :goto_60
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_93

    .line 116
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/uri/UriPermission;

    .line 117
    .restart local v4    # "perm":Lcom/android/server/uri/UriPermission;
    if-eqz p1, :cond_77

    iget-object v5, v4, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    invoke-virtual {p1, v5}, Lcom/android/server/uri/GrantUri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_77

    .line 118
    goto :goto_60

    .line 120
    :cond_77
    if-eqz p3, :cond_82

    iget-object v5, v4, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_82

    .line 121
    goto :goto_60

    .line 123
    :cond_82
    if-eq p4, v2, :cond_89

    iget v5, v4, Lcom/android/server/uri/UriPermission;->targetUserId:I

    if-eq p4, v5, :cond_89

    .line 124
    goto :goto_60

    .line 126
    :cond_89
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-virtual {v4, p0}, Lcom/android/server/uri/UriPermission;->removeWriteOwner(Lcom/android/server/uri/UriPermissionOwner;)V

    .line 128
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 129
    .end local v4    # "perm":Lcom/android/server/uri/UriPermission;
    goto :goto_60

    .line 130
    :cond_93
    iget-object v2, p0, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9d

    .line 131
    iput-object v3, p0, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    .line 134
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/uri/UriPermission;>;"
    :cond_9d
    monitor-exit p0
    :try_end_9e
    .catchall {:try_start_c .. :try_end_9e} :catchall_52

    .line 136
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 137
    .local v1, "permissionsToRemoveSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a3
    if-ge v2, v1, :cond_b3

    .line 138
    iget-object v3, p0, Lcom/android/server/uri/UriPermissionOwner;->mService:Lcom/android/server/uri/UriGrantsManagerInternal;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/uri/UriPermission;

    invoke-interface {v3, v4}, Lcom/android/server/uri/UriGrantsManagerInternal;->removeUriPermissionIfNeeded(Lcom/android/server/uri/UriPermission;)V

    .line 137
    add-int/lit8 v2, v2, 0x1

    goto :goto_a3

    .line 140
    .end local v2    # "i":I
    :cond_b3
    return-void

    .line 134
    .end local v1    # "permissionsToRemoveSize":I
    :goto_b4
    :try_start_b4
    monitor-exit p0
    :try_end_b5
    .catchall {:try_start_b4 .. :try_end_b5} :catchall_52

    throw v1
.end method

.method public removeUriPermissions()V
    .registers 2

    .line 76
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/uri/UriPermissionOwner;->removeUriPermissions(I)V

    .line 77
    return-void
.end method

.method removeUriPermissions(I)V
    .registers 3
    .param p1, "mode"    # I

    .line 80
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/uri/UriPermissionOwner;->removeUriPermission(Lcom/android/server/uri/GrantUri;I)V

    .line 81
    return-void
.end method

.method public removeWritePermission(Lcom/android/server/uri/UriPermission;)V
    .registers 4
    .param p1, "perm"    # Lcom/android/server/uri/UriPermission;

    .line 176
    monitor-enter p0

    .line 178
    :try_start_1
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    if-nez v0, :cond_f

    .line 179
    const-string v0, "UriPermissionOwner"

    const-string/jumbo v1, "mWritePerms is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    monitor-exit p0

    return-void

    .line 183
    :cond_f
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 184
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    .line 187
    :cond_1d
    monitor-exit p0

    .line 188
    return-void

    .line 187
    :catchall_1f
    move-exception v0

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 225
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mOwner:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
