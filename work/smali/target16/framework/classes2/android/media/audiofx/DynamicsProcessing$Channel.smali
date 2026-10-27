.class public final Landroid/media/audiofx/DynamicsProcessing$Channel;
.super Ljava/lang/Object;
.source "DynamicsProcessing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/DynamicsProcessing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Channel"
.end annotation


# instance fields
.field private greylist-max-o mInputGain:F

.field private greylist-max-o mLimiter:Landroid/media/audiofx/DynamicsProcessing$Limiter;

.field private greylist-max-o mMbc:Landroid/media/audiofx/DynamicsProcessing$Mbc;

.field private greylist-max-o mPostEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

.field private greylist-max-o mPreEq:Landroid/media/audiofx/DynamicsProcessing$Eq;


# direct methods
.method public constructor whitelist <init>(FZIZIZIZ)V
    .registers 19

    .line 1055
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1056
    iput p1, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mInputGain:F

    .line 1057
    new-instance p1, Landroid/media/audiofx/DynamicsProcessing$Eq;

    const/4 v0, 0x1

    invoke-direct {p1, p2, v0, p3}, Landroid/media/audiofx/DynamicsProcessing$Eq;-><init>(ZZI)V

    iput-object p1, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mPreEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

    .line 1058
    new-instance p1, Landroid/media/audiofx/DynamicsProcessing$Mbc;

    invoke-direct {p1, p4, v0, p5}, Landroid/media/audiofx/DynamicsProcessing$Mbc;-><init>(ZZI)V

    iput-object p1, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mMbc:Landroid/media/audiofx/DynamicsProcessing$Mbc;

    .line 1059
    new-instance p1, Landroid/media/audiofx/DynamicsProcessing$Eq;

    move/from16 p2, p6

    move/from16 p3, p7

    invoke-direct {p1, p2, v0, p3}, Landroid/media/audiofx/DynamicsProcessing$Eq;-><init>(ZZI)V

    iput-object p1, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mPostEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

    .line 1061
    new-instance v1, Landroid/media/audiofx/DynamicsProcessing$Limiter;

    const/high16 v8, -0x40000000    # -2.0f

    const/4 v9, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x42700000    # 60.0f

    const/high16 v7, 0x41200000    # 10.0f

    move/from16 v2, p8

    invoke-direct/range {v1 .. v9}, Landroid/media/audiofx/DynamicsProcessing$Limiter;-><init>(ZZIFFFFF)V

    iput-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mLimiter:Landroid/media/audiofx/DynamicsProcessing$Limiter;

    .line 1065
    return-void
.end method

.method public constructor whitelist <init>(Landroid/media/audiofx/DynamicsProcessing$Channel;)V
    .registers 4

    .line 1071
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1072
    iget v0, p1, Landroid/media/audiofx/DynamicsProcessing$Channel;->mInputGain:F

    iput v0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mInputGain:F

    .line 1073
    new-instance v0, Landroid/media/audiofx/DynamicsProcessing$Eq;

    iget-object v1, p1, Landroid/media/audiofx/DynamicsProcessing$Channel;->mPreEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

    invoke-direct {v0, v1}, Landroid/media/audiofx/DynamicsProcessing$Eq;-><init>(Landroid/media/audiofx/DynamicsProcessing$Eq;)V

    iput-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mPreEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

    .line 1074
    new-instance v0, Landroid/media/audiofx/DynamicsProcessing$Mbc;

    iget-object v1, p1, Landroid/media/audiofx/DynamicsProcessing$Channel;->mMbc:Landroid/media/audiofx/DynamicsProcessing$Mbc;

    invoke-direct {v0, v1}, Landroid/media/audiofx/DynamicsProcessing$Mbc;-><init>(Landroid/media/audiofx/DynamicsProcessing$Mbc;)V

    iput-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mMbc:Landroid/media/audiofx/DynamicsProcessing$Mbc;

    .line 1075
    new-instance v0, Landroid/media/audiofx/DynamicsProcessing$Eq;

    iget-object v1, p1, Landroid/media/audiofx/DynamicsProcessing$Channel;->mPostEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

    invoke-direct {v0, v1}, Landroid/media/audiofx/DynamicsProcessing$Eq;-><init>(Landroid/media/audiofx/DynamicsProcessing$Eq;)V

    iput-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mPostEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

    .line 1076
    new-instance v0, Landroid/media/audiofx/DynamicsProcessing$Limiter;

    iget-object p1, p1, Landroid/media/audiofx/DynamicsProcessing$Channel;->mLimiter:Landroid/media/audiofx/DynamicsProcessing$Limiter;

    invoke-direct {v0, p1}, Landroid/media/audiofx/DynamicsProcessing$Limiter;-><init>(Landroid/media/audiofx/DynamicsProcessing$Limiter;)V

    iput-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mLimiter:Landroid/media/audiofx/DynamicsProcessing$Limiter;

    .line 1077
    return-void
.end method


# virtual methods
.method public whitelist getInputGain()F
    .registers 2

    .line 1098
    iget v0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mInputGain:F

    return v0
.end method

.method public whitelist getLimiter()Landroid/media/audiofx/DynamicsProcessing$Limiter;
    .registers 2

    .line 1221
    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mLimiter:Landroid/media/audiofx/DynamicsProcessing$Limiter;

    return-object v0
.end method

.method public whitelist getMbc()Landroid/media/audiofx/DynamicsProcessing$Mbc;
    .registers 2

    .line 1149
    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mMbc:Landroid/media/audiofx/DynamicsProcessing$Mbc;

    return-object v0
.end method

.method public whitelist getMbcBand(I)Landroid/media/audiofx/DynamicsProcessing$MbcBand;
    .registers 3

    .line 1169
    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mMbc:Landroid/media/audiofx/DynamicsProcessing$Mbc;

    invoke-virtual {v0, p1}, Landroid/media/audiofx/DynamicsProcessing$Mbc;->getBand(I)Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getPostEq()Landroid/media/audiofx/DynamicsProcessing$Eq;
    .registers 2

    .line 1185
    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mPostEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

    return-object v0
.end method

.method public whitelist getPostEqBand(I)Landroid/media/audiofx/DynamicsProcessing$EqBand;
    .registers 3

    .line 1205
    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mPostEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

    invoke-virtual {v0, p1}, Landroid/media/audiofx/DynamicsProcessing$Eq;->getBand(I)Landroid/media/audiofx/DynamicsProcessing$EqBand;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getPreEq()Landroid/media/audiofx/DynamicsProcessing$Eq;
    .registers 2

    .line 1113
    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mPreEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

    return-object v0
.end method

.method public whitelist getPreEqBand(I)Landroid/media/audiofx/DynamicsProcessing$EqBand;
    .registers 3

    .line 1133
    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mPreEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

    invoke-virtual {v0, p1}, Landroid/media/audiofx/DynamicsProcessing$Eq;->getBand(I)Landroid/media/audiofx/DynamicsProcessing$EqBand;

    move-result-object p1

    return-object p1
.end method

.method public whitelist setInputGain(F)V
    .registers 2

    .line 1105
    iput p1, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mInputGain:F

    .line 1106
    return-void
.end method

.method public whitelist setLimiter(Landroid/media/audiofx/DynamicsProcessing$Limiter;)V
    .registers 3

    .line 1228
    new-instance v0, Landroid/media/audiofx/DynamicsProcessing$Limiter;

    invoke-direct {v0, p1}, Landroid/media/audiofx/DynamicsProcessing$Limiter;-><init>(Landroid/media/audiofx/DynamicsProcessing$Limiter;)V

    iput-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mLimiter:Landroid/media/audiofx/DynamicsProcessing$Limiter;

    .line 1229
    return-void
.end method

.method public whitelist setMbc(Landroid/media/audiofx/DynamicsProcessing$Mbc;)V
    .registers 5

    .line 1157
    invoke-virtual {p1}, Landroid/media/audiofx/DynamicsProcessing$Mbc;->getBandCount()I

    move-result v0

    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mMbc:Landroid/media/audiofx/DynamicsProcessing$Mbc;

    invoke-virtual {v1}, Landroid/media/audiofx/DynamicsProcessing$Mbc;->getBandCount()I

    move-result v1

    if-ne v0, v1, :cond_14

    .line 1161
    new-instance v0, Landroid/media/audiofx/DynamicsProcessing$Mbc;

    invoke-direct {v0, p1}, Landroid/media/audiofx/DynamicsProcessing$Mbc;-><init>(Landroid/media/audiofx/DynamicsProcessing$Mbc;)V

    iput-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mMbc:Landroid/media/audiofx/DynamicsProcessing$Mbc;

    .line 1162
    return-void

    .line 1158
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MbcBandCount changed from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mMbc:Landroid/media/audiofx/DynamicsProcessing$Mbc;

    .line 1159
    invoke-virtual {v2}, Landroid/media/audiofx/DynamicsProcessing$Mbc;->getBandCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/media/audiofx/DynamicsProcessing$Mbc;->getBandCount()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setMbcBand(ILandroid/media/audiofx/DynamicsProcessing$MbcBand;)V
    .registers 4

    .line 1177
    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mMbc:Landroid/media/audiofx/DynamicsProcessing$Mbc;

    invoke-virtual {v0, p1, p2}, Landroid/media/audiofx/DynamicsProcessing$Mbc;->setBand(ILandroid/media/audiofx/DynamicsProcessing$MbcBand;)V

    .line 1178
    return-void
.end method

.method public whitelist setPostEq(Landroid/media/audiofx/DynamicsProcessing$Eq;)V
    .registers 5

    .line 1193
    invoke-virtual {p1}, Landroid/media/audiofx/DynamicsProcessing$Eq;->getBandCount()I

    move-result v0

    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mPostEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

    invoke-virtual {v1}, Landroid/media/audiofx/DynamicsProcessing$Eq;->getBandCount()I

    move-result v1

    if-ne v0, v1, :cond_14

    .line 1197
    new-instance v0, Landroid/media/audiofx/DynamicsProcessing$Eq;

    invoke-direct {v0, p1}, Landroid/media/audiofx/DynamicsProcessing$Eq;-><init>(Landroid/media/audiofx/DynamicsProcessing$Eq;)V

    iput-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mPostEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

    .line 1198
    return-void

    .line 1194
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PostEqBandCount changed from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mPostEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

    .line 1195
    invoke-virtual {v2}, Landroid/media/audiofx/DynamicsProcessing$Eq;->getBandCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/media/audiofx/DynamicsProcessing$Eq;->getBandCount()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setPostEqBand(ILandroid/media/audiofx/DynamicsProcessing$EqBand;)V
    .registers 4

    .line 1213
    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mPostEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

    invoke-virtual {v0, p1, p2}, Landroid/media/audiofx/DynamicsProcessing$Eq;->setBand(ILandroid/media/audiofx/DynamicsProcessing$EqBand;)V

    .line 1214
    return-void
.end method

.method public whitelist setPreEq(Landroid/media/audiofx/DynamicsProcessing$Eq;)V
    .registers 5

    .line 1121
    invoke-virtual {p1}, Landroid/media/audiofx/DynamicsProcessing$Eq;->getBandCount()I

    move-result v0

    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mPreEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

    invoke-virtual {v1}, Landroid/media/audiofx/DynamicsProcessing$Eq;->getBandCount()I

    move-result v1

    if-ne v0, v1, :cond_14

    .line 1125
    new-instance v0, Landroid/media/audiofx/DynamicsProcessing$Eq;

    invoke-direct {v0, p1}, Landroid/media/audiofx/DynamicsProcessing$Eq;-><init>(Landroid/media/audiofx/DynamicsProcessing$Eq;)V

    iput-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mPreEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

    .line 1126
    return-void

    .line 1122
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PreEqBandCount changed from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mPreEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

    .line 1123
    invoke-virtual {v2}, Landroid/media/audiofx/DynamicsProcessing$Eq;->getBandCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/media/audiofx/DynamicsProcessing$Eq;->getBandCount()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setPreEqBand(ILandroid/media/audiofx/DynamicsProcessing$EqBand;)V
    .registers 4

    .line 1141
    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mPreEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

    invoke-virtual {v0, p1, p2}, Landroid/media/audiofx/DynamicsProcessing$Eq;->setBand(ILandroid/media/audiofx/DynamicsProcessing$EqBand;)V

    .line 1142
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 1081
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1082
    iget v1, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mInputGain:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, " InputGain: %f\n"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1083
    const-string v1, "-->PreEq\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1084
    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mPreEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

    invoke-virtual {v1}, Landroid/media/audiofx/DynamicsProcessing$Eq;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1085
    const-string v1, "-->MBC\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1086
    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mMbc:Landroid/media/audiofx/DynamicsProcessing$Mbc;

    invoke-virtual {v1}, Landroid/media/audiofx/DynamicsProcessing$Mbc;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1087
    const-string v1, "-->PostEq\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1088
    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mPostEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

    invoke-virtual {v1}, Landroid/media/audiofx/DynamicsProcessing$Eq;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1089
    const-string v1, "-->Limiter\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1090
    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mLimiter:Landroid/media/audiofx/DynamicsProcessing$Limiter;

    invoke-virtual {v1}, Landroid/media/audiofx/DynamicsProcessing$Limiter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1091
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
