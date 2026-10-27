.class public final Lcom/android/server/am/PendingIntentRecord$Key;
.super Ljava/lang/Object;
.source "PendingIntentRecord.java"


# instance fields
.field public final activity:Landroid/os/IBinder;

.field public allIntents:[Landroid/content/Intent;

.field public allResolvedTypes:[Ljava/lang/String;

.field public final featureId:Ljava/lang/String;

.field public final flags:I

.field public final hashCode:I

.field public final options:Lcom/android/server/wm/SafeActivityOptions;

.field public final packageName:Ljava/lang/String;

.field public final requestCode:I

.field public final requestIntent:Landroid/content/Intent;

.field public final requestResolvedType:Ljava/lang/String;

.field public final type:I

.field public final userId:I

.field public final who:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILcom/android/server/wm/SafeActivityOptions;I)V
    .registers 13

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput p1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    .line 156
    iput-object p2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    .line 157
    iput-object p3, p0, Lcom/android/server/am/PendingIntentRecord$Key;->featureId:Ljava/lang/String;

    .line 158
    iput-object p4, p0, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Landroid/os/IBinder;

    .line 159
    iput-object p5, p0, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    .line 160
    iput p6, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    const/4 p3, 0x0

    if-eqz p7, :cond_18

    .line 161
    array-length v0, p7

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p7, v0

    goto :goto_19

    :cond_18
    move-object v0, p3

    :goto_19
    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eqz p8, :cond_22

    .line 162
    array-length p3, p8

    add-int/lit8 p3, p3, -0x1

    aget-object p3, p8, p3

    :cond_22
    iput-object p3, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    .line 163
    iput-object p7, p0, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    .line 164
    iput-object p8, p0, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    .line 165
    iput p9, p0, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    .line 166
    iput-object p10, p0, Lcom/android/server/am/PendingIntentRecord$Key;->options:Lcom/android/server/wm/SafeActivityOptions;

    .line 167
    iput p11, p0, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    const/16 p7, 0x353

    add-int/2addr p7, p9

    mul-int/lit8 p7, p7, 0x25

    add-int/2addr p7, p6

    mul-int/lit8 p7, p7, 0x25

    add-int/2addr p7, p11

    if-eqz p5, :cond_40

    mul-int/lit8 p7, p7, 0x25

    .line 174
    invoke-virtual {p5}, Ljava/lang/Object;->hashCode()I

    move-result p5

    add-int/2addr p7, p5

    :cond_40
    if-eqz p4, :cond_49

    mul-int/lit8 p7, p7, 0x25

    .line 177
    invoke-interface {p4}, Landroid/os/IBinder;->hashCode()I

    move-result p4

    add-int/2addr p7, p4

    :cond_49
    if-eqz v0, :cond_52

    mul-int/lit8 p7, p7, 0x25

    .line 180
    invoke-virtual {v0}, Landroid/content/Intent;->filterHashCode()I

    move-result p4

    add-int/2addr p7, p4

    :cond_52
    if-eqz p3, :cond_5b

    mul-int/lit8 p7, p7, 0x25

    .line 183
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result p3

    add-int/2addr p7, p3

    :cond_5b
    mul-int/lit8 p7, p7, 0x25

    if-eqz p2, :cond_64

    .line 185
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    goto :goto_65

    :cond_64
    const/4 p2, 0x0

    :goto_65
    add-int/2addr p7, p2

    mul-int/lit8 p7, p7, 0x25

    add-int/2addr p7, p1

    .line 187
    iput p7, p0, Lcom/android/server/am/PendingIntentRecord$Key;->hashCode:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 198
    :cond_4
    :try_start_4
    check-cast p1, Lcom/android/server/am/PendingIntentRecord$Key;

    .line 199
    iget v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    iget v2, p1, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    if-eq v1, v2, :cond_d

    return v0

    .line 202
    :cond_d
    iget v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    iget v2, p1, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    if-eq v1, v2, :cond_14

    return v0

    .line 205
    :cond_14
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    return v0

    .line 208
    :cond_1f
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->featureId:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/PendingIntentRecord$Key;->featureId:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    return v0

    .line 211
    :cond_2a
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Landroid/os/IBinder;

    iget-object v2, p1, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Landroid/os/IBinder;

    if-eq v1, v2, :cond_31

    return v0

    .line 214
    :cond_31
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    return v0

    .line 217
    :cond_3c
    iget v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    iget v2, p1, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    if-eq v1, v2, :cond_43

    return v0

    .line 220
    :cond_43
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    iget-object v2, p1, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eq v1, v2, :cond_55

    if-eqz v1, :cond_52

    .line 222
    invoke-virtual {v1, v2}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_55

    return v0

    :cond_52
    if-eqz v2, :cond_55

    return v0

    .line 229
    :cond_55
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_60

    return v0

    .line 232
    :cond_60
    iget p0, p0, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    iget p1, p1, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I
    :try_end_64
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_64} :catch_69

    if-eq p0, p1, :cond_67

    return v0

    :cond_67
    const/4 p0, 0x1

    return p0

    :catch_69
    return v0
.end method

.method public hashCode()I
    .registers 1

    .line 242
    iget p0, p0, Lcom/android/server/am/PendingIntentRecord$Key;->hashCode:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Key{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/PendingIntentRecord$Key;->typeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->featureId:Ljava/lang/String;

    if-eqz v1, :cond_33

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->featureId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_35

    :cond_33
    const-string v1, ""

    :goto_35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eqz v1, :cond_48

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 250
    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v1

    goto :goto_4a

    :cond_48
    const-string v1, "<null>"

    :goto_4a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " flags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    .line 251
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " u="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "} requestCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public typeName()Ljava/lang/String;
    .registers 2

    .line 256
    iget p0, p0, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_25

    const/4 v0, 0x2

    if-eq p0, v0, :cond_21

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1e

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1a

    const/4 v0, 0x5

    if-eq p0, v0, :cond_16

    .line 268
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 264
    :cond_16
    const-string/jumbo p0, "startForegroundService"

    return-object p0

    .line 262
    :cond_1a
    const-string/jumbo p0, "startService"

    return-object p0

    .line 266
    :cond_1e
    const-string p0, "activityResult"

    return-object p0

    .line 258
    :cond_21
    const-string/jumbo p0, "startActivity"

    return-object p0

    .line 260
    :cond_25
    const-string p0, "broadcastIntent"

    return-object p0
.end method
