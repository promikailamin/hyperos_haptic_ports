.class final Lcom/android/server/am/PendingIntentRecord$Key;
.super Ljava/lang/Object;
.source "PendingIntentRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/PendingIntentRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Key"
.end annotation


# static fields
.field private static final ODD_PRIME_NUMBER:I = 0x25


# instance fields
.field final activity:Landroid/os/IBinder;

.field allIntents:[Landroid/content/Intent;

.field allResolvedTypes:[Ljava/lang/String;

.field final featureId:Ljava/lang/String;

.field final flags:I

.field final hashCode:I

.field final options:Lcom/android/server/wm/SafeActivityOptions;

.field final packageName:Ljava/lang/String;

.field final requestCode:I

.field final requestIntent:Landroid/content/Intent;

.field final requestResolvedType:Ljava/lang/String;

.field final type:I

.field final userId:I

.field final who:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILcom/android/server/wm/SafeActivityOptions;I)V
    .registers 29
    .param p1, "_t"    # I
    .param p2, "_p"    # Ljava/lang/String;
    .param p3, "_featureId"    # Ljava/lang/String;
    .param p4, "_a"    # Landroid/os/IBinder;
    .param p5, "_w"    # Ljava/lang/String;
    .param p6, "_r"    # I
    .param p7, "_i"    # [Landroid/content/Intent;
    .param p8, "_it"    # [Ljava/lang/String;
    .param p9, "_f"    # I
    .param p10, "_o"    # Lcom/android/server/wm/SafeActivityOptions;
    .param p11, "_userId"    # I

    .line 101
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p11

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput v1, v0, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    .line 103
    iput-object v2, v0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    .line 104
    move-object/from16 v10, p3

    iput-object v10, v0, Lcom/android/server/am/PendingIntentRecord$Key;->featureId:Ljava/lang/String;

    .line 105
    iput-object v3, v0, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Landroid/os/IBinder;

    .line 106
    iput-object v4, v0, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    .line 107
    iput v5, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    .line 108
    const/4 v11, 0x0

    if-eqz v6, :cond_2e

    array-length v12, v6

    add-int/lit8 v12, v12, -0x1

    aget-object v12, v6, v12

    goto :goto_2f

    :cond_2e
    move-object v12, v11

    :goto_2f
    iput-object v12, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    .line 109
    if-eqz v7, :cond_38

    array-length v11, v7

    add-int/lit8 v11, v11, -0x1

    aget-object v11, v7, v11

    :cond_38
    iput-object v11, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    .line 110
    iput-object v6, v0, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    .line 111
    iput-object v7, v0, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    .line 112
    iput v8, v0, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    .line 113
    move-object/from16 v13, p10

    iput-object v13, v0, Lcom/android/server/am/PendingIntentRecord$Key;->options:Lcom/android/server/wm/SafeActivityOptions;

    .line 114
    iput v9, v0, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    .line 116
    const/16 v14, 0x17

    .line 117
    .local v14, "hash":I
    mul-int/lit8 v15, v14, 0x25

    add-int/2addr v15, v8

    .line 118
    .end local v14    # "hash":I
    .local v15, "hash":I
    mul-int/lit8 v14, v15, 0x25

    add-int/2addr v14, v5

    .line 119
    .end local v15    # "hash":I
    .restart local v14    # "hash":I
    mul-int/lit8 v15, v14, 0x25

    add-int/2addr v15, v9

    .line 120
    .end local v14    # "hash":I
    .restart local v15    # "hash":I
    if-eqz v4, :cond_5b

    .line 121
    mul-int/lit8 v14, v15, 0x25

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->hashCode()I

    move-result v16

    add-int v15, v14, v16

    .line 123
    :cond_5b
    if-eqz v3, :cond_65

    .line 124
    mul-int/lit8 v14, v15, 0x25

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->hashCode()I

    move-result v16

    add-int v15, v14, v16

    .line 126
    :cond_65
    if-eqz v12, :cond_6f

    .line 127
    mul-int/lit8 v14, v15, 0x25

    invoke-virtual {v12}, Landroid/content/Intent;->filterHashCode()I

    move-result v12

    add-int v15, v14, v12

    .line 129
    :cond_6f
    if-eqz v11, :cond_79

    .line 130
    mul-int/lit8 v12, v15, 0x25

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v11

    add-int v15, v12, v11

    .line 132
    :cond_79
    mul-int/lit8 v11, v15, 0x25

    if-eqz v2, :cond_82

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v12

    goto :goto_83

    :cond_82
    const/4 v12, 0x0

    :goto_83
    add-int/2addr v11, v12

    .line 133
    .end local v15    # "hash":I
    .local v11, "hash":I
    mul-int/lit8 v12, v11, 0x25

    add-int/2addr v12, v1

    .line 134
    .end local v11    # "hash":I
    .local v12, "hash":I
    iput v12, v0, Lcom/android/server/am/PendingIntentRecord$Key;->hashCode:I

    .line 137
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "otherObj"    # Ljava/lang/Object;

    .line 141
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 142
    return v0

    .line 145
    :cond_4
    :try_start_4
    move-object v1, p1

    check-cast v1, Lcom/android/server/am/PendingIntentRecord$Key;

    .line 146
    .local v1, "other":Lcom/android/server/am/PendingIntentRecord$Key;
    iget v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    iget v3, v1, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    if-eq v2, v3, :cond_e

    .line 147
    return v0

    .line 149
    :cond_e
    iget v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    iget v3, v1, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    if-eq v2, v3, :cond_15

    .line 150
    return v0

    .line 152
    :cond_15
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 153
    return v0

    .line 155
    :cond_20
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->featureId:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord$Key;->featureId:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 156
    return v0

    .line 158
    :cond_2b
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Landroid/os/IBinder;

    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Landroid/os/IBinder;

    if-eq v2, v3, :cond_32

    .line 159
    return v0

    .line 161
    :cond_32
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3d

    .line 162
    return v0

    .line 164
    :cond_3d
    iget v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    iget v3, v1, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    if-eq v2, v3, :cond_44

    .line 165
    return v0

    .line 167
    :cond_44
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eq v2, v3, :cond_56

    .line 168
    if-eqz v2, :cond_53

    .line 169
    invoke-virtual {v2, v3}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_56

    .line 170
    return v0

    .line 172
    :cond_53
    if-eqz v3, :cond_56

    .line 173
    return v0

    .line 176
    :cond_56
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_61

    .line 177
    return v0

    .line 179
    :cond_61
    iget v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    iget v3, v1, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I
    :try_end_65
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_65} :catch_6a

    if-eq v2, v3, :cond_68

    .line 180
    return v0

    .line 182
    :cond_68
    const/4 v0, 0x1

    return v0

    .line 183
    .end local v1    # "other":Lcom/android/server/am/PendingIntentRecord$Key;
    :catch_6a
    move-exception v1

    .line 185
    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 189
    iget v0, p0, Lcom/android/server/am/PendingIntentRecord$Key;->hashCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Key{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/am/PendingIntentRecord$Key;->typeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 194
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->featureId:Ljava/lang/String;

    if-eqz v1, :cond_39

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->featureId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3b

    :cond_39
    const-string v1, ""

    :goto_3b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 196
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eqz v1, :cond_50

    .line 197
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v1

    goto :goto_52

    :cond_50
    const-string v1, "<null>"

    :goto_52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " flags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    .line 198
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " u="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "} requestCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 193
    return-object v0
.end method

.method typeName()Ljava/lang/String;
    .registers 2

    .line 203
    iget v0, p0, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    packed-switch v0, :pswitch_data_1c

    .line 215
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 211
    :pswitch_a
    const-string/jumbo v0, "startForegroundService"

    return-object v0

    .line 209
    :pswitch_e
    const-string/jumbo v0, "startService"

    return-object v0

    .line 213
    :pswitch_12
    const-string v0, "activityResult"

    return-object v0

    .line 205
    :pswitch_15
    const-string/jumbo v0, "startActivity"

    return-object v0

    .line 207
    :pswitch_19
    const-string v0, "broadcastIntent"

    return-object v0

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_19
        :pswitch_15
        :pswitch_12
        :pswitch_e
        :pswitch_a
    .end packed-switch
.end method
