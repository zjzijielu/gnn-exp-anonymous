INITIALIZE_METHOD="None"
IDENTITY_DIM=32
EPOCH=100
DATASET="citeseer"
LEARNING_RATE=0.001

for AGG_TYPE in mean sum
    do
        for FEATURE_DIM in 200
        # for FEATURE_DIM in 100 200 300 400 500
        # for FEATURE_DIM in 20 40 60 80 100
            do
                python3 -m graphsage.model --initializer $INITIALIZE_METHOD --feature_dim $FEATURE_DIM --identity_dim $IDENTITY_DIM --epoch $EPOCH --dataset $DATASET --seed 62 --lr $LEARNING_RATE --agg_type $AGG_TYPE
                python3 -m graphsage.model --initializer $INITIALIZE_METHOD --feature_dim $FEATURE_DIM --identity_dim $IDENTITY_DIM --epoch $EPOCH --dataset $DATASET --seed 62 --lr $LEARNING_RATE --agg_type $AGG_TYPE
                python3 -m graphsage.model --initializer $INITIALIZE_METHOD --feature_dim $FEATURE_DIM --identity_dim $IDENTITY_DIM --epoch $EPOCH --dataset $DATASET --seed 62 --lr $LEARNING_RATE --agg_type $AGG_TYPE
                python3 -m graphsage.model --initializer $INITIALIZE_METHOD --feature_dim $FEATURE_DIM --identity_dim $IDENTITY_DIM --epoch $EPOCH --dataset $DATASET --seed 62 --lr $LEARNING_RATE --agg_type $AGG_TYPE
                python3 -m graphsage.model --initializer $INITIALIZE_METHOD --feature_dim $FEATURE_DIM --identity_dim $IDENTITY_DIM --epoch $EPOCH --dataset $DATASET --seed 62 --lr $LEARNING_RATE --agg_type $AGG_TYPE
            done
    done