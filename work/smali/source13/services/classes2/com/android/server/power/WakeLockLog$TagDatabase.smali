.class Lcom/android/server/power/WakeLockLog$TagDatabase;
.super Ljava/lang/Object;
.source "WakeLockLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/WakeLockLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TagDatabase"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/WakeLockLog$TagDatabase$Callback;
    }
.end annotation


# instance fields
.field private final mArray:[Lcom/android/server/power/WakeLockLog$TagData;

.field private mCallback:Lcom/android/server/power/WakeLockLog$TagDatabase$Callback;

.field private final mInvalidIndex:I


# direct methods
.method constructor <init>(Lcom/android/server/power/WakeLockLog$Injector;)V
    .registers 4
    .param p1, "injector"    # Lcom/android/server/power/WakeLockLog$Injector;

    .line 1070
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1071
    invoke-virtual {p1}, Lcom/android/server/power/WakeLockLog$Injector;->getTagDatabaseSize()I

    move-result v0

    const/16 v1, 0x80

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1074
    .local v0, "size":I
    add-int/lit8 v1, v0, -0x1

    new-array v1, v1, [Lcom/android/server/power/WakeLockLog$TagData;

    iput-object v1, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mArray:[Lcom/android/server/power/WakeLockLog$TagData;

    .line 1075
    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mInvalidIndex:I

    .line 1076
    return-void
.end method

.method private setToIndex(Lcom/android/server/power/WakeLockLog$TagData;I)V
    .registers 6
    .param p1, "tag"    # Lcom/android/server/power/WakeLockLog$TagData;
    .param p2, "index"    # I

    .line 1218
    if-ltz p2, :cond_4b

    iget-object v0, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mArray:[Lcom/android/server/power/WakeLockLog$TagData;

    array-length v1, v0

    if-lt p2, v1, :cond_8

    goto :goto_4b

    .line 1221
    :cond_8
    aget-object v0, v0, p2

    .line 1222
    .local v0, "current":Lcom/android/server/power/WakeLockLog$TagData;
    if-eqz v0, :cond_44

    .line 1224
    iget v1, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mInvalidIndex:I

    iput v1, v0, Lcom/android/server/power/WakeLockLog$TagData;->index:I

    .line 1226
    invoke-static {}, Lcom/android/server/power/WakeLockLog;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 1227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Replaced tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/power/WakeLockLog$TagData;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with tag"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PowerManagerService.WLLog"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    :cond_44
    iget-object v1, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mArray:[Lcom/android/server/power/WakeLockLog$TagData;

    aput-object p1, v1, p2

    .line 1233
    iput p2, p1, Lcom/android/server/power/WakeLockLog$TagData;->index:I

    .line 1234
    return-void

    .line 1219
    .end local v0    # "current":Lcom/android/server/power/WakeLockLog$TagData;
    :cond_4b
    :goto_4b
    return-void
.end method

.method public static updateTagTime(Lcom/android/server/power/WakeLockLog$TagData;J)V
    .registers 3
    .param p0, "tag"    # Lcom/android/server/power/WakeLockLog$TagData;
    .param p1, "time"    # J

    .line 1209
    if-eqz p0, :cond_4

    .line 1210
    iput-wide p1, p0, Lcom/android/server/power/WakeLockLog$TagData;->lastUsedTime:J

    .line 1212
    :cond_4
    return-void
.end method


# virtual methods
.method public findOrCreateTag(Ljava/lang/String;IZ)Lcom/android/server/power/WakeLockLog$TagData;
    .registers 14
    .param p1, "tagStr"    # Ljava/lang/String;
    .param p2, "ownerUid"    # I
    .param p3, "shouldCreate"    # Z

    .line 1160
    const/4 v0, -0x1

    .line 1161
    .local v0, "firstAvailable":I
    const/4 v1, 0x0

    .line 1162
    .local v1, "oldest":Lcom/android/server/power/WakeLockLog$TagData;
    const/4 v2, -0x1

    .line 1165
    .local v2, "oldestIndex":I
    new-instance v3, Lcom/android/server/power/WakeLockLog$TagData;

    invoke-direct {v3, p1, p2}, Lcom/android/server/power/WakeLockLog$TagData;-><init>(Ljava/lang/String;I)V

    .line 1166
    .local v3, "tag":Lcom/android/server/power/WakeLockLog$TagData;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_9
    iget-object v5, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mArray:[Lcom/android/server/power/WakeLockLog$TagData;

    array-length v6, v5

    const/4 v7, -0x1

    if-ge v4, v6, :cond_30

    .line 1167
    aget-object v5, v5, v4

    .line 1168
    .local v5, "current":Lcom/android/server/power/WakeLockLog$TagData;
    invoke-virtual {v3, v5}, Lcom/android/server/power/WakeLockLog$TagData;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 1170
    return-object v5

    .line 1171
    :cond_18
    if-nez p3, :cond_1b

    .line 1172
    goto :goto_2d

    .line 1173
    :cond_1b
    if-eqz v5, :cond_2a

    .line 1176
    if-eqz v1, :cond_27

    iget-wide v6, v5, Lcom/android/server/power/WakeLockLog$TagData;->lastUsedTime:J

    iget-wide v8, v1, Lcom/android/server/power/WakeLockLog$TagData;->lastUsedTime:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_2d

    .line 1177
    :cond_27
    move v2, v4

    .line 1178
    move-object v1, v5

    goto :goto_2d

    .line 1180
    :cond_2a
    if-ne v0, v7, :cond_2d

    .line 1181
    move v0, v4

    .line 1166
    .end local v5    # "current":Lcom/android/server/power/WakeLockLog$TagData;
    :cond_2d
    :goto_2d
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 1186
    .end local v4    # "i":I
    :cond_30
    if-nez p3, :cond_34

    .line 1187
    const/4 v4, 0x0

    return-object v4

    .line 1191
    :cond_34
    if-ne v0, v7, :cond_38

    const/4 v4, 0x1

    goto :goto_39

    :cond_38
    const/4 v4, 0x0

    .line 1192
    .local v4, "useOldest":Z
    :goto_39
    if-eqz v4, :cond_6c

    iget-object v5, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mCallback:Lcom/android/server/power/WakeLockLog$TagDatabase$Callback;

    if-eqz v5, :cond_6c

    .line 1193
    invoke-static {}, Lcom/android/server/power/WakeLockLog;->-$$Nest$sfgetDEBUG()Z

    move-result v5

    if-eqz v5, :cond_67

    .line 1194
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing tag index: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "PowerManagerService.WLLog"

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    :cond_67
    iget-object v5, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mCallback:Lcom/android/server/power/WakeLockLog$TagDatabase$Callback;

    invoke-interface {v5, v2}, Lcom/android/server/power/WakeLockLog$TagDatabase$Callback;->onIndexRemoved(I)V

    .line 1198
    :cond_6c
    if-eq v0, v7, :cond_70

    move v5, v0

    goto :goto_71

    :cond_70
    move v5, v2

    :goto_71
    invoke-direct {p0, v3, v5}, Lcom/android/server/power/WakeLockLog$TagDatabase;->setToIndex(Lcom/android/server/power/WakeLockLog$TagData;I)V

    .line 1199
    return-object v3
.end method

.method public getTag(I)Lcom/android/server/power/WakeLockLog$TagData;
    .registers 4
    .param p1, "index"    # I

    .line 1122
    if-ltz p1, :cond_f

    iget-object v0, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mArray:[Lcom/android/server/power/WakeLockLog$TagData;

    array-length v1, v0

    if-ge p1, v1, :cond_f

    iget v1, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mInvalidIndex:I

    if-ne p1, v1, :cond_c

    goto :goto_f

    .line 1125
    :cond_c
    aget-object v0, v0, p1

    return-object v0

    .line 1123
    :cond_f
    :goto_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTag(Ljava/lang/String;I)Lcom/android/server/power/WakeLockLog$TagData;
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "ownerUid"    # I

    .line 1136
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/power/WakeLockLog$TagDatabase;->findOrCreateTag(Ljava/lang/String;IZ)Lcom/android/server/power/WakeLockLog$TagData;

    move-result-object v0

    return-object v0
.end method

.method public getTagIndex(Lcom/android/server/power/WakeLockLog$TagData;)I
    .registers 3
    .param p1, "tagData"    # Lcom/android/server/power/WakeLockLog$TagData;

    .line 1146
    if-nez p1, :cond_5

    iget v0, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mInvalidIndex:I

    goto :goto_7

    :cond_5
    iget v0, p1, Lcom/android/server/power/WakeLockLog$TagData;->index:I

    :goto_7
    return v0
.end method

.method public setCallback(Lcom/android/server/power/WakeLockLog$TagDatabase$Callback;)V
    .registers 2
    .param p1, "callback"    # Lcom/android/server/power/WakeLockLog$TagDatabase$Callback;

    .line 1113
    iput-object p1, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mCallback:Lcom/android/server/power/WakeLockLog$TagDatabase$Callback;

    .line 1114
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 12

    .line 1080
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1081
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Tag Database: size("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mArray:[Lcom/android/server/power/WakeLockLog$TagData;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1082
    const/4 v1, 0x0

    .line 1083
    .local v1, "entries":I
    const/4 v2, 0x0

    .line 1084
    .local v2, "byteEstimate":I
    const/4 v3, 0x0

    .line 1085
    .local v3, "tagSize":I
    const/4 v4, 0x0

    .line 1086
    .local v4, "tags":I
    iget-object v5, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mArray:[Lcom/android/server/power/WakeLockLog$TagData;

    array-length v6, v5

    const/4 v7, 0x0

    :goto_1f
    if-ge v7, v6, :cond_3f

    aget-object v8, v5, v7

    .line 1087
    .local v8, "tagData":Lcom/android/server/power/WakeLockLog$TagData;
    add-int/lit8 v2, v2, 0x8

    .line 1088
    move-object v9, v8

    .line 1089
    .local v9, "data":Lcom/android/server/power/WakeLockLog$TagData;
    if-eqz v9, :cond_3c

    .line 1090
    add-int/lit8 v1, v1, 0x1

    .line 1091
    invoke-virtual {v9}, Lcom/android/server/power/WakeLockLog$TagData;->getByteSize()I

    move-result v10

    add-int/2addr v2, v10

    .line 1092
    iget-object v10, v9, Lcom/android/server/power/WakeLockLog$TagData;->tag:Ljava/lang/String;

    if-eqz v10, :cond_3c

    .line 1093
    add-int/lit8 v4, v4, 0x1

    .line 1094
    iget-object v10, v9, Lcom/android/server/power/WakeLockLog$TagData;->tag:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v3, v10

    .line 1086
    .end local v8    # "tagData":Lcom/android/server/power/WakeLockLog$TagData;
    .end local v9    # "data":Lcom/android/server/power/WakeLockLog$TagData;
    :cond_3c
    add-int/lit8 v7, v7, 0x1

    goto :goto_1f

    .line 1098
    :cond_3f
    const-string v5, ", entries: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1099
    const-string v5, ", Bytes used: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1100
    invoke-static {}, Lcom/android/server/power/WakeLockLog;->-$$Nest$sfgetDEBUG()Z

    move-result v5

    if-eqz v5, :cond_71

    .line 1101
    const-string v5, ", Avg tag size: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    div-int v6, v3, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1102
    const-string v5, "\n    "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mArray:[Lcom/android/server/power/WakeLockLog$TagData;

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1104
    :cond_71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
