const db = require('../data/db-config.js');

module.exports = {
    find,
    findById,
    findSteps,
    add,
    update,
    remove
};

function find(){
    return db('schemes')
    .join('steps', 'schemes.id', '=', 'steps.scheme_id')
    .select('schemes.id', 'schemes.scheme_name', 'steps.instructions');
}

function findById(id){
    return db('schemes')
    .where('id', id)
    .first();
};

function findSteps(id){

};

function add(scheme){
    return db('schemes')
    .insert(scheme, 'id')
    .then(ids => {
        return findById(ids[0]);
    });
};

function update(changes, id){
    return db('schemes')
    .where({ id })
    .update(changes)
};

function remove(id){
    return db('schemes')
    .where({ id })
    .del()
};
